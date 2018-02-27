# Ruby Koans Tutorial

Ruby Koans를 시작해봅시다. 

루비의 기초와 테스팅 규칙에 대해 배울수 있습니다.

## 1. 다운로드

Koans 를 다운로드 받아서 압축을 풀어주세요.

## 2. 실행

다운로드 받은 폴더로 이동하여 다음 명령어를 실행해봅시다.

```shell
ruby path_to_enlightenment.rb
```

> `path_to_enlightenment.rb` 파일을 실행한다는 뜻입니다.

![enlightenment](./image/start.png)

파일을 실행 시키게 되면 오류 메시지가 파일이름과 오류코드의 라인을 알려줍니다. 

지금부터 우리는 99개의 문제를 풀어볼 예정입니다. 

제일 처음 수정할 파일은 `about_objects.rb `입니다.

다음과 같은 라인 __ 빈칸이 보일 때마다  삭제하고 다른 것으로 채우면서 진행합니다.



## 3. 생각

제일 처음 시작해볼 파일 이름은 `about_objects.rb`입니다.

![첫 번째 주장](./image/assert.png)

우리는 `assert_equal` 메소드를 사용해서 오늘쪽의 결과와 `__` 의 값이 같은지 확인합니다.

`1.is_a?(Object)` 는 `1`이 `Object`인지 물어보고 `ture` 혹은 `false`를 리턴해줍니다.

리턴값은 `true` 이기 때문에 `__` 를 `true` 로 바꿔 보도록 하겠습니다.

같은 이유로 모든 값들을 `true` 로 채우면 다음과 같습니다.

![첫 번째 주장](./image/true.png)

코드에서의 메소드 한개는 99개중의 한문제 입니다.

이 문제가 맞았는지 확인을 하기 위해서 처음에 실행했던 `ruby path_to_enlightenment.rb` 를 실행해주세요

![첫 번째 통과](./image/first.png)

이제 우리는 나머지 98문제를 풀고 왼쪽 끝에 있는 빨강색 X를 오른쪽 끝으로 보내면 됩니다.



## 4. IRB

IRB에서 코드를 테스트 할 수 있습니다. 

![나일강 소개](./image/assert.png)

`1.is_a?(Object)` 의 결과를 확인하기 위해서 터미널에서 `irb`를 실행시키고 다음과 같이 결과를 확인해 볼 수 있습니다.  

![irb](./image/irb.png)

