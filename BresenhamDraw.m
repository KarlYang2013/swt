function img=BresenhamDraw(img,x1,y1,x2,y2)
     if x1~=x2
        k=(y2-y1)/(x2-x1);
        flag=0;         %б���жϱ��λ
        if abs(k)>1     %���б�ʴ���1,���x��y�����û�
            flag=1;
            k=1/k;
            [y1 x1]=Swap(x1,y1);
            [y2 x2]=Swap(x2,y2);
        end
        %���㿪ʼ���ߵ�����            
        mi=min(x1,x2);      
        ma=max(x1,x2);
        if mi==x1
            s=y1; 
        else
            s=y2;
        end
        d=0;
        for i=mi:ma
            if flag==0
                img(s,i)=1;
            else
                img(i,s)=1; 
            end
            d=d+k; 
            %�Ա���iÿ��1������d�Ƿ񳬹�һ��������ȷ�������s���ӻ����
            if d>=1
                d=d-1;
                s=s+1;
            elseif d<=-1
                d=d+1;
                s=s-1;
            end     
        end
     else
         mi = min(y1, y2);
         mx = max(y1, y2);
         for i = mi : 1: mx
            img(i, x1) = 1;
         end
     end
end