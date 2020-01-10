import React, { Component } from 'react'
// import React from 'react';
import {
  YellowBox,
  StyleSheet,
  Text,
  View,
  AppRegistry,
  StatusBar,
  Button,
  TextInput
} from 'react-native';
import { Avatar } from "./src/Components";
import { Style } from "./src/comon";
import { Logs } from 'expo';

import KhoaPham from "./components/KhoaPham.js";

YellowBox.ignoreWarnings(['Warning:...']);
console.disableYellowBox = true;
console.ignoredYellowBox = ['Warning: Each', 'Warning: Failed'];



 export default class Demo1 extends Component {
  constructor(props) {
    super(props);
    this.state = { text: 'Useless PlaceHolder' };
  }
  render() {
    return (
      <View style={styles.bao}>
        <OVuong/>
        <OVuong/>
        <OVuong/>
        <OVuong/>
        <OVuong/>
        <KhoaPham/>
      </View>
    );
  }
}

class OVuong extends Component {
  render() {
    return (
      <View style={styles.teo} />
    )
  }
}


const styles = StyleSheet.create({
  bao: {
    flex: 1,
    flexDirection: 'row',
    justifyContent:'space-between',
    alignItems:'center',
  },
  teo: {
    width: 20,
    height: 30,
    borderWidth:1,
    backgroundColor: 'yellow',
  }

});

AppRegistry.registerComponent('Demo1', () => Demo1);
