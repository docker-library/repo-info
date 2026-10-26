## `sapmachine:jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:4a76fc5f1eaafdeafd31f7d0c5c0ba79b166b6d5d7d8c35859bfe754a25f645c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:a5f876a898e8e1adc5bfc25a41970d0368deba08e0828293df741c8e42830d52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (63988744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f2fadb5ce87adbb315a1bae31c0f84addb076bc7f449f6347c742d5b9006b7c`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:50:08 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:50:08 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Mon, 26 Oct 2026 17:50:08 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f29a008030d2df744e8a92b7c4aad184f8e1d737806ccf8af5c6470d38bfa4`  
		Last Modified: Mon, 26 Oct 2026 17:50:20 GMT  
		Size: 60.2 MB (60194387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a3220035407fb8b0d1f01f17090907ea5a9f556464030dd73311e6be208a7a6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **437.5 KB (437549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f69151406812ba8219e6eeb1dabc09ec24e7678efe04f76c0e5b41bdbdc6c74`

```dockerfile
```

-	Layers:
	-	`sha256:25c17a02ab99b7c2c0bef6dea105979d15a71ec2a5771c25eb1983ce81b85d12`  
		Last Modified: Mon, 26 Oct 2026 17:50:18 GMT  
		Size: 430.3 KB (430253 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be978ac525b9b8df2d6a41966c9d25114623fcc4f076ad0261e1498ace554465`  
		Last Modified: Mon, 26 Oct 2026 17:50:18 GMT  
		Size: 7.3 KB (7296 bytes)  
		MIME: application/vnd.in-toto+json
