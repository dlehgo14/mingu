class KakaoController < ApplicationController
  def keyboard
		@msg =
			{ 
				type: "buttons",
				buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
			}
		render json: @msg, status: :ok
  end
	
  def message
		@response = params[:content]
			
		if @response == "이름"
			@msg = {
				message: {
					text: "안녕하세요 제 이름은 밍구,... 아니 민지에요. 성이 민이고 이름이 지랍니다. 하하하 놀라셨어요? 많이들 그렇게 놀라고는 한답니다!",
					photo: {
						url: "https://afternoon-reef-22396.herokuapp.com/%EB%8B%A4%EB%9E%8C%EC%A5%90.png",
						width: 640,
						height: 480
					}
					# message_button: {
					#   label: "NAVER BLOG",
					#   url: "https://blog.naver.com/xhdtn8070/221231786261"
					# }
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				}
			}
		render json: @msg, status: :ok
			
		elsif @response == "나이"
			@msg = {
				message: {
					text: "저는 20대에요..!\n\n\n\n....여자 나이를 물어보는건 반칙이라구!! 그렇게 많지 않아!!"
					photo: {
					    url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					    width: 640,
					    height: 480
					}
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				}
			}
			render json: @msg, status: :ok
		elsif @response == "성격"
			@msg = {
				message: {
					text: "제 성격은 밝고 쾌활해요!! 모든 일이든 긍정적으로 생각하고 둥글둥글하답니다!! \n 하지만 항상 그런건 아니에요.. 가끔 화가 날때면 정말 무섭다구요.. 그러니까 상처주지 말아요!!!"
					photo: {
					    url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					    width: 640,
					    height: 480
					}
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				}
			}
			render json: @msg, status: :ok			
		elsif @response == "특징"
			@msg = {
				message: {
					text: "허허.. 자네 나의 특징이 궁금한가... 그렇다면.. 나의 인스타에 놀러오게나"
					photo: {
					    url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					    width: 640,
					    height: 480
					}
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				},
				message_button: {
					label: "민스타그램",
					url: "https://www.instagram.com/min_sta_gram_94/"
				}
			}
			render json: @msg, status: :ok
		elsif @response == "좋아하는 것"
			@msg = {
				message: {
					text: "저는 고구마를 좋아해요! 그리고 브로콜리랑 양배추도 좋아해요.... 사실은 닭발이 먹고싶어요... 찜닭도 먹고싶고 낙곱새도 먹고싶어요... 다이어트 너무 힘들어요ㅜㅜ"
					photo: {
					    url: "https://s3.ap-northeast-2.amazonaws.com/tongilstorage/kakaochat/3.PNG",
					    width: 640,
					    height: 480
					}
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				}
			}
			render json: @msg, status: :ok
		elsif @response == "대화해보기"
			@msg = {
				message: {
					text: "저랑 대화를 원하세요?"
				},
				keyboard: {
					type: "buttons",
					buttons: ["네", "아니요"]
				}
			}
			render json: @msg, status: :ok
		elsif @response == "네"
			@msg = {
				message: {
					text: "무슨 대화를 하고싶은데요?"
				},
				keyboard: {
					type: "buttons",
					buttons: ["남자친구 있어요?", "아무것도 아니에요"]
				}
			}
			render json: @msg, status: :ok
		elsif @response == "아니요" || "아무것도 아니에요"
			@msg = {
				message: {
					text: "싱겁네요..."
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				}
			}
			render json: @msg, status: :ok
		elsif @response == "남자친구 있어요?"
			@msg = {
				message: {
					text: "네 있어요!"
				},
				keyboard: {
					type: "buttons",
					buttons: ["남자친구 어디가 좋아요?", "아..그렇군요"]
				}
			}
		elsif @response == "남자친구 어디가 좋아요?"
			@msg = {
				message: {
					text: "직접 대답해주세요"
				},
				keyboard: {
					type: "text"
				}
			}
		else
			@msg = {
				message: {
					text: "#{@response} 라는 답변... 나쁘지 않다고... 밍구 사랑해 ♡"
				},
				keyboard: {
					type: "buttons",
					buttons: ["이름", "나이","성격","특징","좋아하는 것","대화해보기"]
				}
			}
			render json: @msg, status: :ok
		end
			
	end
end
