import React, { Component } from 'react'
// import React from 'react';
import {
  YellowBox,
  StyleSheet,
  Text,
  View,
  AppRegistry,
  StatusBar,
  Button
} from 'react-native';
import { Avatar } from "./src/Components";
import { Style } from "./src/comon";
import { Logs } from 'expo';

YellowBox.ignoreWarnings(['Warning:...']);
console.disableYellowBox = true;
console.ignoredYellowBox = ['Warning: Each', 'Warning: Failed'];
class Blink extends Component{

  componentDidMount(){
    setInterval(() => (
      this.setState(previousState =>(
        { isShowingText: !previousState.isShowingText }
        ))
    ),1000);
  }
  state = { isShowingText: true};
  render(){
    if(!this.state.isShowingText){
      return null;
    }
    return(
      <Text>{this.props.text}</Text>
    );
  }
}


export default class Demo1 extends Component {
  constructor(props) {
    super(props);
    console.log("Hello ConStructor");
  }

  componentWillMount() {
    console.log("Hello WillMount");
  }

  onPressLearnMore(){
    console.log("Click");
  }

  render() {
    console.log("Hello Render");
    return (
        <View style={styles.bao}>
           <Button
           onPress={()=>{
             console.log("Click")
           }}
          title="Learn More"
          color="red"
          accessibilityLabel="Learn more about this purple button"
          />
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
    flex: 1,
    marginTop:30
  },
  ti: {
    backgroundColor: 'yellow',
    flex: 1
  },
  suu: {
    backgroundColor: 'pink',
    flex: 3/2
  },
  chuNhay:{
    marginTop:40,
    width:20,
    height:20,
    fontSize:30
  }
});

AppRegistry.registerComponent('Demo1', () => Demo1);
