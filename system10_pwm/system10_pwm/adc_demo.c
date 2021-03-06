/* Sample demonstration of the ADC from "Using DE Series ADC" p.12
 *
 */

#define ADC_ADDR 0x00003010 //Qsys defined base address for the ADC
#define LED_ADDR 0x00003000 //Qsys defined base address for the LEDs

int main (void){
	volatile int * adc = (int*)(ADC_ADDR);
	volatile int * led = (int*)(LED_ADDR);
	unsigned int data;
	int count;
	int channel;
	data = 0;
	count = 0;
	channel = 0;

	while (1){
		*(adc) = 0; /* Start the ADC read */
		count += 1;
		data = *(adc+channel); /* Get the value of the selected channel */
		data = data/16; /* Ignore the lowest 4 bits */
		*(led) = data; /* Display the value on the LEDs */
		
		if (count==500000){
			count = 0;
			channel = !channel;
		}//end if

	}//end while

	return 0;

}// end main