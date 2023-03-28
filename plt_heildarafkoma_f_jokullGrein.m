addpath '/Volumes/sentinel/Dropbox/04-Repos/Water.Basics/export_fig'
load afk.mat
%plt_va_ho_la_obs_smb
set(0,'defaultfigurepaperunits','centimeters');
set(0,'DefaultAxesFontSize',15)
set(0,'defaultfigurecolor','w');
set(0,'defaultfigureinverthardcopy','off');
set(0,'defaultfigurepaperorientation','landscape');
set(0,'defaultfigurepapersize',[29.7 29.7]);
set(0,'defaultfigurepaperposition',[.25 .25 [29.7 29.7]-0.5]);
set(0,'DefaultTextInterpreter','none');
set(0, 'DefaultFigureUnits', 'centimeters');
set(0, 'DefaultFigurePosition', [.25 .25 [29.7 29.7]-0.5]);

close all
figure,hold on
tiledlayout(3,1)
nexttile, hold on
bar(V.year,V.bw,'FaceColor',[122, 150, 234]/255)              % [30,144,255]/255) rgba(122,150,234,255)
bar(V.year,V.bs,'FaceColor',[255,76,76]/255)                    % [220,20,60]/255) rgba(255,76,76,255)
plot(V.year,V.bn,'Color',[0,128,0]/255,'LineWidth',2,'LineStyle','--','Marker','o')       % rgba(0,128,0,255)
scatter(V.year,V.bn,'filled','MarkerFaceColor',[0,128,0]/255) 
ylabel('Afkoma (m. vatns/ár)')
hText = text(0.01,0.98,['Vatnajökull'],'Units','normalized','HorizontalAlignment','left','VerticalAlignment','bottom','FontSize',16);    
grid on

nexttile, hold on
bar(H.year,H.bw,'FaceColor',[122, 150, 234]/255)
bar(H.year,H.bs,'FaceColor',[255,76,76]/255)
plot(H.year,H.bnl,'Color',[0,128,0]/255,'LineWidth',2,'LineStyle','--','Marker','o')
scatter(H.year,H.bnl,'filled','MarkerFaceColor',[0,128,0]/255) 
ylabel('Afkoma (m. vatns/ár)')
hText = text(0.01,0.98,['Hofsjökull'],'Units','normalized','HorizontalAlignment','left','VerticalAlignment','bottom','FontSize',16);    
grid on
%
nexttile, hold on
h(1) = bar(L.year,L.bw,'FaceColor',[122, 150, 234]/255,'DisplayName','Vetrarafkoma')
h(2) = bar(L.year,L.bs,'FaceColor',[255,76,76]/255,'DisplayName','Sumarafkoma')
h(3) = plot(L.year,L.bn,'Color',[0,128,0]/255,'LineWidth',2,'LineStyle','--','Marker','o','DisplayName','Heildarafkoma')
scatter(L.year,L.bn,'filled','MarkerFaceColor',[0,128,0]/255) 
ylabel('Afkoma (m. vatns/ár)')
hText = text(0.01,0.98,['Langjökull'],'Units','normalized','HorizontalAlignment','left','VerticalAlignment','bottom','FontSize',16);    
grid on

legend([h(1:3)],'Location','southoutside','Orientation','horizontal')

saveas smb_va_la_ho_2022.pdf
%%
export_fig smb_va_la_ho_2022.pdf
export_fig smb_va_la_ho_2022.jpg

%%
clc
sum(smb.meaafk.Vbw>smb.meaafk.Vbw(end))
sum(smb.meaafk.Vbw<smb.meaafk.Vbw(end))
%%
sum(smb.meaafk.Vbs>smb.meaafk.Vbs(end))
sum(smb.meaafk.Vbs<smb.meaafk.Vbs(end))
%%
sum(smb.meaafk.Vbn>-smb.meaafk.Vbn(end))
sum(smb.meaafk.Vbn<-smb.meaafk.Vbn(end))
%%
clc
sum(smb.meaafk.Lbw>smb.meaafk.Lbw(end))
sum(smb.meaafk.Lbw<smb.meaafk.Lbw(end))

sum(smb.meaafk.Hbw>smb.meaafk.Hbw(end))
sum(smb.meaafk.Hbw<smb.meaafk.Hbw(end))
%%
sum(smb.meaafk.Vbs>smb.meaafk.Vbs(end))
sum(smb.meaafk.Vbs<smb.meaafk.Vbs(end))
%%
sum(smb.meaafk.Vbn>-smb.meaafk.Vbn(end))
sum(smb.meaafk.Vbn<-smb.meaafk.Vbn(end))


%% Greining afkomu

year_to_analyse = 2021

ix = find(smb.A.year== year_to_analyse);


clc
disp(['Hlutfall vetrarafkomu Vatnajökull ',num2str(smb.meaafk.Vbw(end)/nanmean(smb.meaafk.Vbw)*100),' %'])
disp(['Hlutfall sumarafkoma Vatnajökull ',num2str(smb.meaafk.Vbs(end)/nanmean(smb.meaafk.Vbs)*100),' %'])
disp(['Hlutfall heildarafkoma Vatnajökull ',num2str(smb.meaafk.Vbn(end)/nanmean(smb.meaafk.Vbn)*100),' %'])
disp('  ')
disp(['Hlutfall vetrarafkomu Langjökull ',num2str(smb.meaafk.Lbw(end)/nanmean(smb.meaafk.Lbw)*100),' %'])
disp(['Hlutfall sumarafkoma Langjökull ',num2str(smb.meaafk.Lbs(end)/nanmean(smb.meaafk.Lbs)*100),' %'])
disp(['Hlutfall heildarafkoma Langjökull ',num2str(smb.meaafk.Lbn(end)/nanmean(smb.meaafk.Lbn)*100),' %'])
disp('  ')
disp(['Hlutfall vetrarafkomu Hofsjökull ',num2str(smb.meaafk.Hbw(end)/nanmean(smb.meaafk.Hbw)*100),' %'])
disp(['Hlutfall sumarafkoma Hofsjökull ',num2str(smb.meaafk.Hbs(end)/nanmean(smb.meaafk.Hbs)*100),' %'])
disp(['Hlutfall heildarafkoma Hofsjökull ',num2str(smb.meaafk.Hbn(end)/nanmean(smb.meaafk.Hbn)*100),' %'])







