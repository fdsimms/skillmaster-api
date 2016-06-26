import React, { Component } from 'react';
import {
  Text,
  View,
  TextInput,
  TouchableHighlight,
  ActivityIndicatorIOS
} from 'react-native';

import { find } from 'lodash';

import styles from './stylesheet';

export default class LoginView extends Component {
  constructor(props) {
    super(props);

    this.state = { showProgress: false };
  }

  onLoginPress() {
    this.setState({ showProgress: true });

    fetch('http://localhost:3000/api/users', {
      method: 'POST',
      credentials: 'same-origin',
      headers: {
        'X-CSRF-token': this.getCSRFToken(),
        Accept: 'application/json',
        'Content-Type': 'application/json'
      },
      body: JSON.stringify({
        nickname: this.state.nickname,
        fname: this.state.fname,
        lname: this.state.lname,
        password: this.state.password,
        email: this.state.email,
      })
    })
      .then(response => {
        console.log(response);
      })
      .finally(() => {
        this.setState({ showProgress: false });
      });
  }

  getCSRFToken() {
    return find(document.getElementsByTagName('meta'), (meta) => {
      return meta.name === 'csrf-token';
    }).content;
  }

  render() {
    return (
      <View style={styles.container}>
        <Text style={styles.logo}> Skillmaster </Text>
        <TextInput
          style={styles.input}
          placeholder='First Name'
          onChangeText={(text) => this.setState({ fname: text })}
        />
        <TextInput
          style={styles.input}
          placeholder='Last Name'
          onChangeText={(text) => this.setState({ lname: text })}
        />
        <TextInput
          style={styles.input}
          placeholder='Nickname'
          onChangeText={(text) => this.setState({ nickname: text })}
        />
        <TextInput
          style={styles.input}
          placeholder='Email'
          onChangeText={(text) => this.setState({ email: text })}
        />
        <TextInput
          style={styles.input}
          secureTextEntry
          placeholder='Password'
          onChangeText={(text) => this.setState({ password: text })}
        />
        <TouchableHighlight
          onPress={this.onLoginPress.bind(this)}
          style={styles.button}
        >
          <Text style={styles.buttonText}>Submit</Text>
        </TouchableHighlight>
        {this.state.showProgress &&
          <ActivityIndicatorIOS
            animating={this.state.showProgress}
            size='large'
          />
        }
      </View>
    );
  }
}
