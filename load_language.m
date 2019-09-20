function language = load_language(lang, paradigm_tasks)
    switch lang
        case 'eng'
            end_message = ...
                ['\nPlease do not turn away from the screen and try not to blink during the tasks\n\n',...
                 'only in the small breaks, when task description appeares.\n\n',...
                 '\nTell us if you are ready!'];

            middle_message = ...
                ['\nWe are going to display the upcoming task,\n\n',...
                 'after that a fixation cross will appear for 4 seconds.\n\n',...
                 'You have to execute the appropriate task during this time.\n\n',...
                 'Repeat the tasks for each second!\n\n'];
             
            constrict = '- Constrict the sponge with your ';
            imagine_constriction = '- Imagine that you are constricting the sponge with your ';
            
            tread = '- Tread the sponge with your ';
            imagine_treading = '- Imagine that you are treading the sponge with your ';
             
            language.task_eye = ...
                ['You have to execute 2 different tasks during recording: \n\n',...
                 '- watch the monitor with opened eyes                  \n\n',...
                 '- close your eye and wait for the end signal.         \n\n',...
                 end_message];
             
            switch paradigm_tasks
                case 'a' % left hand, right hand, left foot, right foot
                    language.task_12 = ...
                        ['You have to execute 4 different tasks during recording:\n\n',...
                         constrict, 'RIGHT hand!                         \n\n',...
                         constrict, 'LEFT hand!                          \n\n',...
                         imagine_constriction, 'RIGHT hand! \n\n',...
                         imagine_constriction, 'LEFT hand!  \n\n',...
                         middle_message, end_message];
              
                    language.task_34 = ...
                        ['You have to execute 4 different tasks during recording:\n\n',...
                         tread, 'RIGHT foot!                         \n\n',...
                         tread, 'LEFT foot!                          \n\n',...
                         imagine_treading, 'RIGHT foot!     \n\n',...
                         imagine_treading, 'LEFT foot!      \n\n',...
                         middle_message, end_message];

                    language.task_mixed_1234 = ...
                        ['You have to execute 4 different tasks during recording:\n\n',...
                         imagine_constriction, 'RIGHT hand! \n\n',...
                         imagine_constriction, 'LEFT hand!  \n\n',...
                         imagine_treading, 'RIGHT foot!     \n\n',...
                         imagine_treading, 'LEFT foot!      \n\n',...
                         middle_message, end_message];
                     
                    language.task_1_m_text = 'Constrict RIGHT hand'; % CHECK in send trigger!!!
                    language.task_2_m_text = 'Constrict LEFT hand';
                    language.task_1_mi_text = 'Imagine RIGHT hand constriction';
                    language.task_2_mi_text = 'Imagine LEFT hand constriction';
                    
                    language.task_3_m_text = 'Tread with RIGHT foot';
                    language.task_4_m_text = 'Tread with LEFT foot';
                    language.task_3_mi_text = 'Imagine RIGHT foot treading';
                    language.task_4_mi_text = 'Imagine LEFT foot treading';
                     
                case 'b' % left hand, right hand, booth hands, booth foots
                    language.task_12 = ...
                        ['You have to execute 4 different tasks during recording:\n\n',...
                         constrict, 'RIGHT hand!                         \n\n',...
                         constrict, 'LEFT hand!                          \n\n',...
                         imagine_constriction, 'RIGHT hand! \n\n',...
                         imagine_constriction, 'LEFT hand!  \n\n',...
                         middle_message, end_message];
              
                    language.task_34 = ...
                        ['You have to execute 4 different tasks during recording:\n\n',...
                         constrict, 'BOTH hands!                         \n\n',...
                         tread, 'BOTH foots!                              \n\n',...
                         imagine_constriction, 'BOTH hands! \n\n',...
                         imagine_treading, 'BOTH foots!      \n\n',...
                         middle_message, end_message];

                    language.task_mixed_1234 = ...
                        ['You have to execute 4 different tasks during recording:\n\n',...
                         imagine_constriction, 'RIGHT hand! \n\n',...
                         imagine_constriction, 'LEFT hand!  \n\n',...
                         imagine_constriction, 'BOTH hands! \n\n',...
                         imagine_treading, 'BOTH foots!      \n\n',...
                         middle_message, end_message];
                     
                    language.task_1_m_text = 'Constrict RIGHT hand'; % RIGHT!!!!
                    language.task_2_m_text = 'Constrict LEFT hand';
                    language.task_1_mi_text = 'Imagine RIGHT hand constriction';
                    language.task_2_mi_text = 'Imagine LEFT hand constriction';
                    
                    language.task_3_m_text = 'Constrict Both HANDS';
                    language.task_4_m_text = 'Tread with Both FOOTS';
                    language.task_3_mi_text = 'Imagine Both HANDS constriction';
                    language.task_4_mi_text = 'Imagine Both FOOTS treading';
                    
                otherwise
                    error('Wrong input parameter in paradigm_tasks!')
            end

            language.thanks = 'Thank you! We are done.';
            language.welcome = 'Hi!';
            
            language.open_eye = 'Watch the fixation cross for 1 minute';
            language.closed_eye = 'Close your eyes for 1 minute';

        case 'hun'
            end_message = ...
                ['\nNe fordulj el a k�perny� el�l �s k�rlek a kereszt\n\n',...
                 'jelenl�te alatt lehet�leg ne, vagy min�l kevesebbet pislogj!\n\n',...
                 '\nSz�lj ha k�szen �llsz!'];

            middle_message = ...
                ['\nA feladatokat sz�vegesen jelen�tj�k meg\n\n',...
                 'ezt k�vet�en egy kereszt jelenik meg 4 m�sodpercig,\n\n',...
                 'ez id� alatt kell v�grehajtanod a feladatot!\n\n',...
                 'A feladatokat m�sodpercenk�nt ism�teld!\n\n'];
             
            constrict = '- �k�lbe szor�tani ';
            imagine_constriction = '- Elk�pzelni, hogy �k�lbe szor�tod ';
            
            tread = '- Megtaposni ';
            imagine_treading = '- Elk�pzelni, hogy megtaposod ';

            language.task_eye = ...
                ['A felv�tel sor�n 2 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                 '- nyitott szemmel, illetve                          \n\n',...
                 '- csukott szemmel �lni.                             \n\n',...
                 end_message];
             
            switch paradigm_tasks
                case 'a'
                    language.task_12 = ...
                        ['A felv�tel sor�n 4 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                         constrict, 'a jobb kezed!                      \n\n',...
                         constrict, 'a bal kezed!                       \n\n',...
                         imagine_constriction, 'a jobb kezed!     \n\n',...
                         imagine_constriction, 'a bal kezed!      \n\n',...
                         middle_message, end_message];

                    language.task_34 = ...
                        ['A felv�tel sor�n 4 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                         tread, 'a jobb l�bad alatti szivacsot                  \n\n',...
                         tread, 'a bal l�bad alatti szivacsot                   \n\n',...
                         imagine_treading, 'a jobb l�bad alatti szivacsot \n\n',...
                         imagine_treading, 'a bal l�bad alatti szivacsot  \n\n',...
                         middle_message, end_message];

                    language.task_mixed_1234 = ...
                        ['A felv�tel sor�n 4 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                         imagine_constriction, 'a jobb kezed!     \n\n',...
                         imagine_constriction, 'a bal kezed!      \n\n',...
                         imagine_treading, 'a jobb l�bad alatti szivacsot \n\n',...
                         imagine_treading, 'a bal l�bad alatti szivacsot  \n\n',...
                         middle_message, end_message];
                     
                    language.task_1_m_text = 'JOBB �k�l szor�t�s';
                    language.task_2_m_text = 'BAL �k�l szor�t�s';
                    language.task_1_mi_text = 'Elk�pzelt JOBB �k�l szor�t�s';
                    language.task_2_mi_text = 'Elk�pzelt BAL �k�l szor�t�s';
                    
                    language.task_3_m_text = 'JOBB l�b tapos�s';
                    language.task_4_m_text = 'BAL l�b tapos�s';
                    language.task_3_mi_text = 'Elk�pzelt JOBB l�b tapos�s';
                    language.task_4_mi_text = 'Elk�pzelt BAL l�b tapos�s';
                     
                case 'b'
                    language.task_12 = ...
                        ['A felv�tel sor�n 4 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                         constrict, 'a jobb kezed!                        \n\n',...
                         constrict, 'a bal kezed!                         \n\n',...
                         imagine_constriction, 'a jobb kezed!     \n\n',...
                         imagine_constriction, 'a bal kezed!      \n\n',...
                         middle_message, end_message];

                    language.task_34 = ...
                        ['A felv�tel sor�n 4 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                         constrict, 'mindk�t kezed!                                           \n\n',...
                         tread, 'a l�baid alatt l�v� szivacsokat!                           \n\n',...
                         imagine_constriction, 'mindk�t kezed!                   \n\n',...
                         imagine_treading, 'a l�baid alatt l�v� szivacsokat!\n\n',...
                         middle_message, end_message];

                    language.task_mixed_1234 = ...
                        ['A felv�tel sor�n 4 k�l�nb�z� feladatot kell majd v�grehajtanod:\n\n',...
                         imagine_constriction, 'a jobb kezed!    \n\n',...
                         imagine_constriction, 'a bal kezed!      \n\n',...
                         imagine_constriction, 'mindk�t kezed! \n\n',...
                         imagine_treading, 'a l�baid alatt l�v� szivacsokat!\n\n',...
                         middle_message, end_message];
                     
                    language.task_1_m_text = 'JOBB �k�l szor�t�s';
                    language.task_2_m_text = 'BAL �k�l szor�t�s';
                    language.task_1_mi_text = 'Elk�pzelt JOBB �k�l szor�t�s';
                    language.task_2_mi_text = 'Elk�pzelt BAL �k�l szor�t�s';
                    
                    language.task_3_m_text = 'Mink�t �K�L szor�t�sa';
                    language.task_4_m_text = 'Mindk�t L�B tapos�sa';
                    language.task_3_mi_text = 'Elk�pzelt Mindk�t �K�L szor�t�sa';
                    language.task_4_mi_text = 'Elk�pzelt Mindk�t L�B tapos�sa';
                otherwise
                    error('Wrong input parameter in paradigm_tasks!')
            end

            language.thanks = 'K�sz�nj�k, v�gezt�nk!';
            language.welcome = '�dv!';
            
            language.open_eye = 'N�zd a keresztet 1 percig';
            language.closed_eye = 'Csukd be a szemed 1 percre';
            
        otherwise
            error([lang, ' language is not defined.'])
    end
