import 'package:flutter/material.dart';
import 'package:fund_manger/widgets/style.dart';

class AddFund extends StatefulWidget {
  const AddFund({Key? key}) : super(key: key);

  @override
  _AddFundState createState() => _AddFundState();
}

class _AddFundState extends State<AddFund> {
  int _radioSelected = 0; // Initial selected radiobutton is UPI 
  setSelectedRadio(int val){
    setState(() {
      _radioSelected = val;
    });

  }

  @override
  
  Widget build(BuildContext context) {
    // bool isSelected = true;
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          flexibleSpace: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFF12711), Color(0xFFF12711)]))
              ),),
           
        body:SingleChildScrollView(
          child: Container(
                  height: size.height,
                   decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFF12711), Color(0xFFF5AF19)])),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(padding: EdgeInsets.only(left: 100, top: size.width*0.25)),
                            
                          ],
                        ),
        
                        Container(
                          child: Text(
                            'Add Record',
                            style: cardItemTextStyle.copyWith(
                              fontSize: size.width * 0.08,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(size.height * 0.02),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Divider(
                                color: Colors.white,
                                thickness: 1,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextField(
                                obscureText: false,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  filled: true,
                                  
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(size.height * 0.01),
                                  ),
                                  hintText: 'Amount',
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(size.height * 0.01),
                                  ),
                                  hintText: 'Comment (Optinal)',
                                ),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Center(
                                child: Text(
                                  'Payment method',
                                  style: cardItemTextStyle.copyWith(
                                      color: Colors.white,
                                      fontSize: size.height * 0.04,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 60),
                                    child: Radio(
                                      value:1,
                                      groupValue: _radioSelected, // for UPI
                                      activeColor: Colors.black,
                                      onChanged: (val) {
                                        setSelectedRadio(val as int);
                                      },
                                    ),
                                  ),
                                  Text('UPI'),
                                  Radio(
                                    value: 2,
                                    groupValue: _radioSelected,
                                    activeColor: Colors.black,
                                    onChanged: (val) {
                                     setSelectedRadio(val as int);

                                    },  
                                  ),
                                  Text('Cash'),
                                  Radio(
                                    value: 3,
                                    groupValue: _radioSelected,
                                    activeColor: Colors.black,
                                    onChanged: (val) {
                                      setSelectedRadio(val as int);
                                    }
                                  
                                  ),
                                  Text('Other'),
                
                                ],
                              ),
                
                              SizedBox(
                                height: 20.0,
                              ),
                              Center(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white, // background
                                    onPrimary: Colors.black, // foreground
                                  ),
                                  onPressed: () {
                                                  // add amount by user 
                                  },
                                  child: Container(
                                    width: size.width*0.17,
                                    height: size.height*0.06,
                                    child: Row(
                                      children: [
                                        Icon(Icons.account_balance_wallet),
                                        SizedBox(width: 10.0,),
                                        Text('Add',style: cardItemTextStyle.copyWith(fontSize: 17,fontWeight: FontWeight.bold),),
                                      ],
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                ),
        )
          
        ),
      
    );
  }
}
