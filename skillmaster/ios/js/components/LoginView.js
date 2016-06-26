import React, { Component } from 'react';
import {
  Text,
  View,
  StyleSheet,
  TextInput,
  TouchableHighlight,
  ActivityIndicatorIOS
} from 'react-native';

export default class LoginView extends Component {
  constructor(props) {
    super(props);

    this.state = { showProgress: false };
  }

  onLoginPress() {
    this.setState({ showProgress: true });
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
        <TouchableHighlight onPress={this.onLoginPress.bind(this)}>
          <Text>Submit</Text>
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

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
    padding: 10
  },
  logo: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  input: {
    height: 50,
    borderWidth: 1,
    marginTop: 5,
    borderColor: '#DDD',
    padding: 4
  }
});
