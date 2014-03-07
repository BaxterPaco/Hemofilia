//
//  ViewController.h
//  SingleView
//
//  Created by Francisco Bartual on 06/03/14.
//  Copyright (c) 2014 Francisco Bartual. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDataSource,UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *lblFecha;

@property (weak, nonatomic) IBOutlet UIButton *btnBoton;
@property (weak, nonatomic) IBOutlet UIButton *btnBoton2;
@property (weak, nonatomic) IBOutlet UIPickerView *listaTratamiento;
@property (strong,nonatomic) NSArray *lista;
-(IBAction) CambiarEtiqueta1;
-(IBAction) CambiarEtiqueta2;

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView;

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component;

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component;
@end
