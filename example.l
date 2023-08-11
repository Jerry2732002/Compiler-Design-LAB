num (0|1)*1(0|1)*
%%
{num} printf("accepted");
.+ printf("not accepted");
%%
void main()
{
printf("Enter the string:");
yylex();
}
