import React from 'react';
import {
  Text,
  View,
  StyleSheet,
  TextInput,
  TouchableHighlight
} from 'react-native';

const LoginView = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.logo}> Skillmaster </Text>
      <TextInput style={styles.input} placeholder='Username' />
      <TextInput style={styles.input} placeholder='Password' />
      <TouchableHighlight>
        <Text>Submit</Text>
      </TouchableHighlight>
    </View>
  );
};

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


export default LoginView;
