/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React from 'react';
import {
  AppRegistry
} from 'react-native';
import LoginView from './ios/js/components/LoginView';

const Skillmaster = () => {
  return (
    <LoginView />
  );
};

AppRegistry.registerComponent('skillmaster', () => Skillmaster);
