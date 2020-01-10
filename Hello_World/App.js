import React, { useState } from 'react'
import {
  StyleSheet,
  Text,
  View,
  Button,
} from 'react-native';

export default function App(){
  const [name,setName] = useState('Khuong');
  const [person,setPerson] = useState({
    name:'mario',
    age:40
  });
  const clickHandler = () =>{
    setName('Thang Khac');
    setPerson({name:'Mario 2' ,age:45});
  }
  return (
    <View style={styles.container}>
      <Text>My Name is {name}</Text>
<Text>His name is {person.name} and his age is {person.age}</Text>
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
