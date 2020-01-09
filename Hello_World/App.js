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
      <View>
        <StatusBar hidden={true} />
        <View style={styles.bao}>
          <Text style={styles.teo}>afgfg</Text>
          <Text style={styles.ti}>b</Text>
        </View>
      </View>
    );
  }

  componentDidMount() {
    console.log("Hello DidMount");
  }


}


const styles = StyleSheet.create({
  bao: {
    backgroundColor: 'black',
    flex: 1
  },
  teo: {
    backgroundColor: 'red',
    flex:2,
    width:300,
    height:203
  },
  ti: {
    backgroundColor: 'yellow',
    flex: 1,
    width:300,
    height:203
  }
});

AppRegistry.registerComponent('Demo1', () => Demo1);
