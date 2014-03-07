//
//  ViewController.m
//  SingleView
//
//  Created by Francisco Bartual on 06/03/14.
//  Copyright (c) 2014 Francisco Bartual. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()


@end

@implementation ViewController
@synthesize lista=_lista;
@synthesize listaTratamiento;
@synthesize lblFecha;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    NSDateFormatter *outputFormatter = [[NSDateFormatter alloc] init];
    [outputFormatter setDateFormat:@"dd/MM/yy"];
    
    NSString *dateTime = [NSString stringWithFormat:@"%@",[outputFormatter stringFromDate:[NSDate date]]];
    lblFecha.text=dateTime;
    _lista=[[NSArray alloc] initWithObjects:@"Tratamiento a demanda", @"Seguimiento de un tratamiento",@"Profilaxis",@"Inmunotolerancia",nil];
    listaTratamiento.delegate=self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)CambiarEtiqueta1{
    lblFecha.text =@"Hola";
}
-(IBAction)CambiarEtiqueta2{
 lblFecha.text=@"adiós";
}

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_lista count];
}

-(NSString *) pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_lista objectAtIndex:row];
}

@end
