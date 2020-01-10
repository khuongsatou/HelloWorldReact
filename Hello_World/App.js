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
 
  render() {
    return (
      <View style={styles.bao}>
        
        <KhoaPham tenKhachHang="Khuong" />
        <KhoaPham tenKhachHang="Khuong1" age={1999} />
      </View>
    );
  }
}

class KhachHang extends Component{
  render(){
    return(
      <View style={{backgroundColor:'yellow',padding:10}}>
        <Text>{this.props.hoten} || DEFAULT NAME</Text>
      </View>
    );
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
