import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
} from 'react-native';

export default function App(){
  const [name,setName] = useState('Khuong');
  const clickHandler = () =>{
    setName('Thang Khac');
  }
  return (
    <View style={styles.container}>
      <Text>My Name is {name}</Text>
      <Text></Text>
      <View style={styles.buttonContainer}>
        <Button title='update State' onPress={clickHandler}/>

      </View>
    </View>
  )
}


const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor:'#fff',
    alignItems:'center',
    justifyContent:'center',
  },
  buttonContainer:{
    margin:20
  }
 
});
