using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Transaction
/// </summary>
public class Transaction
{
    double amount;
    double balance;
    double ledgerbal;

    public Transaction()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    public void Withdrawal()
    {
        if(amount > balance)
        {
            Console.WriteLine("Insufficient Funds");
        }
        else
        {
            balance -= amount;
        }
    }

    public void Transfer()
    {
        if (amount > balance)
        {
            Console.WriteLine("Insufficient Funds");
        }
        else
        {
            balance -= amount;
        }
    }

    public void Ledger()
    {
        ledgerbal = balance + 1000;
    }

    public void Deposit()
    {
        balance += amount;
    }
}