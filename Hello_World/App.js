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
// const rectangle = {
//   width: 200,
//   height: 300,
//   backgroundColor:'blue'
// };

export default class Demo1 extends Component {
  constructor(props) {
    super(props);
    console.log("Hello ConStructor");
  }

  componentWillMount(){
    console.log("Hello WillMount");
  }

  render() {
    console.log("Hello Render");
    return (
      <View>
        
        <StatusBar hidden={true} />
        <View style={{
          marginTop: 20,
          width: 50,
          height: 50,
          backgroundColor: 'red'
        }}>
        </View>
        <View style={Style.rectangle} />
        <View style={styles.header, styles.background} />


      </View>
    );
  }

  componentDidMount(){
    console.log("Hello DidMount");
  }


}

AppRegistry.registerComponent('Demo1', () => Demo1);

// export default function App() {
//   return (
//     <View>

//       <View style={{
//         marginTop:20,
//         width: 50,
//         height: 50,
//         backgroundColor: 'red'
//       }}>
//         </View>
//         <View style={Style.rectangle}/>
//         <View style={styles.header,styles.background}/>


//     </View>

//   );
// }

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',

  },
  header: {
    width: 500,
    height: 300,
    borderWidth: 1,
    marginTop: 4
  },
  background: {
    borderColor: 'green'
  }
});
