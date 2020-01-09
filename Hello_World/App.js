import React, { Component } from 'react'
// import React from 'react';
import {
  YellowBox,
  StyleSheet,
  Text,
  View,
  AppRegistry,
  StatusBar
} from 'react-native';
import { Avatar } from "./src/Components";
import { Style } from "./src/comon";

YellowBox.ignoreWarnings(['Warning:...']);
console.disableYellowBox = true;
console.ignoredYellowBox = ['Warning: Each', 'Warning: Failed'];
export default class Demo1 extends Component {
  constructor(props) {
    super(props);
    console.log("Hello ConStructor");
  }

  componentWillMount() {
    console.log("Hello WillMount");
  }

  render() {
    console.log("Hello Render");
    return (
      
      <View style={styles.bao}>
        <View style={styles.teo} />
        <View style={styles.ti} />
        <View style={styles.suu} />
      </View>
    );
  }

  componentDidMount() {
    console.log("Hello DidMount");
  }


}


const styles = StyleSheet.create({
  bao: { flex: 1, flexDirection: 'row' },
  teo: {
    backgroundColor: 'red',
    flex: 1
  },
  ti: {
    backgroundColor: 'yellow',
    flex: 1
  },
  suu: {
    backgroundColor: 'pink',
    flex: 3/2
  }
});

AppRegistry.registerComponent('Demo1', () => Demo1);
