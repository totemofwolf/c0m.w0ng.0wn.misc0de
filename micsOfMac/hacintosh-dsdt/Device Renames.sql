# Device Renames
into_all all code_regex _T_([0-6]) replaceall_matched begin T_%1 end;

into device label PIC set_label begin IPIC end;
into device label DMAD set_label begin DMAC end;
into device label TMR set_label begin TIMR end;
into device label RTC0 set_label begin RTC end;
into device label COPR set_label begin MATH end;
into device label OMSC set_label begin LDRC end;
into device label CHN0 set_label begin PRT0 end;
into device label CHN1 set_label begin PRT1 end;
into device label EUSB set_label begin EHCI end;
into device label USBE set_label begin UHCI end;
into device label USB0 set_label begin UHC1 end;
into device label USB1 set_label begin UHC2 end;
into device label USB2 set_label begin UHC3 end;
into device label USB3 set_label begin UHC4 end;
into device label USB4 set_label begin UHC5 end;
into device label USB5 set_label begin UHC6 end;
into device label USB6 set_label begin UHC7 end;
into device label USB7 set_label begin UHC8 end;
into device label AZAL set_label begin HDEF end;


into_all all code_regex DMAD replaceall_matched begin DMAC end;
into_all all code_regex TMR replaceall_matched begin TIMR end;
into_all all code_regex RTC0 replaceall_matched begin RTC end;
into_all all code_regex COPR replaceall_matched begin MATH end;
into_all all code_regex OMSC replaceall_matched begin LDRC end;
into_all all code_regex CHN0 replaceall_matched begin PRT0 end;
into_all all code_regex CHN1 replaceall_matched begin PRT1 end;
into_all all code_regex EUSB replaceall_matched begin EHCI end;
into_all all code_regex USBE replaceall_matched begin UHCI end;
into_all all code_regex USB0 replaceall_matched begin UHC1 end;
into_all all code_regex USB1 replaceall_matched begin UHC2 end;
into_all all code_regex USB2 replaceall_matched begin UHC3 end;
into_all all code_regex USB3 replaceall_matched begin UHC4 end;
into_all all code_regex USB4 replaceall_matched begin UHC5 end;
into_all all code_regex USB5 replaceall_matched begin UHC6 end;
into_all all code_regex USB6 replaceall_matched begin UHC7 end;
into_all all code_regex USB7 replaceall_matched begin UHC8 end;
into_all all code_regex AZAL replaceall_matched begin HDEF end;
