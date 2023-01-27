## `php-zendserver:latest`

```console
$ docker pull php-zendserver@sha256:05f794c9796902ace3a19ee96b1361de6343fda98cfb362666138da79027c145
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `php-zendserver:latest` - linux; amd64

```console
$ docker pull php-zendserver@sha256:1da9c6caa6adf947fa11f22965cc1fd1d88ffc6c7db8ba3fb7667cfdd2be76a2
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **395.1 MB (395130522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a857ed99c7c45ec307906c814b419c5dbecb6d681a68e7a7c59a701b33c7c9`
-	Default Command: `["\/usr\/local\/bin\/run"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 20:32:01 GMT
RUN apt-get update && apt-get install -y       gnupg
# Mon, 02 Jan 2023 20:32:02 GMT
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-key 799058698E65316A2E7A4FF42EAE1437F7D2C623
# Mon, 02 Jan 2023 20:34:01 GMT
COPY file:1e70d8fd6f9643bffb703528edddba0aa02a58e95cc53e92f58a86cde29e732a in /etc/apt/sources.list.d/zend-server.list 
# Mon, 02 Jan 2023 20:35:31 GMT
RUN apt-get update && apt-get install -y       iproute2       curl       libmysqlclient20       unzip       git       zend-server-nginx=2021.0.0+b74     && rm -rf /var/lib/apt/lists/*     && /usr/local/zend/bin/zendctl.sh stop
# Mon, 02 Jan 2023 20:35:34 GMT
ENV ZS_INIT_VERSION=0.3
# Mon, 02 Jan 2023 20:35:34 GMT
ENV ZS_INIT_SHA256=e8d441d8503808e9fc0fafc762b2cb80d4a6e68b94fede0fe41efdeac10800cb
# Mon, 02 Jan 2023 20:35:35 GMT
COPY file:ad21ce0b2dc8345be0ef63836774934d6b2045ddc3685411221a07dd10b649d1 in /tmp/zs-init.patch 
# Mon, 02 Jan 2023 20:35:36 GMT
RUN curl -fSL -o zs-init.tar.gz "http://repos.zend.com/zs-init/zs-init-docker-${ZS_INIT_VERSION}.tar.gz"     && echo "${ZS_INIT_SHA256} *zs-init.tar.gz" | sha256sum -c -     && mkdir /usr/local/zs-init     && tar xzf zs-init.tar.gz --strip-components=1 -C /usr/local/zs-init     && rm zs-init.tar.gz     && patch -u /usr/local/zs-init/src/Init/Steps/AbstractStep.php -i /tmp/zs-init.patch     && rm /tmp/zs-init.patch
# Mon, 02 Jan 2023 20:35:36 GMT
WORKDIR /usr/local/zs-init
# Mon, 02 Jan 2023 20:35:41 GMT
RUN /usr/local/zend/bin/php -r "readfile('https://getcomposer.org/installer');" | /usr/local/zend/bin/php     && /usr/local/zend/bin/php composer.phar update
# Mon, 02 Jan 2023 20:35:41 GMT
COPY dir:eecd98e9ebf1c61a12ae67558eb2a6ce846b9ebfadabbf08503e90b3e30d9496 in /usr/local/bin 
# Mon, 02 Jan 2023 20:35:41 GMT
COPY dir:80bde0d50316e7c9350262fe3b75826a91d075303027787e759d703b60df13d6 in /usr/local/zend/var/plugins/ 
# Mon, 02 Jan 2023 20:35:42 GMT
RUN rm /var/www/html/index.nginx-debian.html
# Mon, 02 Jan 2023 20:35:42 GMT
COPY dir:d174a5d34625889b4356c566972566e0ca7da618b01ea42276562f8186517a67 in /var/www/html 
# Mon, 02 Jan 2023 20:35:42 GMT
EXPOSE 80
# Mon, 02 Jan 2023 20:35:42 GMT
EXPOSE 443
# Mon, 02 Jan 2023 20:35:42 GMT
EXPOSE 10081
# Mon, 02 Jan 2023 20:35:42 GMT
EXPOSE 10082
# Mon, 02 Jan 2023 20:35:42 GMT
WORKDIR /var/www/html
# Mon, 02 Jan 2023 20:35:43 GMT
CMD ["/usr/local/bin/run"]
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf5ef1d726c85f4f95996ce0d571843ff0328c2e6edf1b328194cdd08056bdda`  
		Last Modified: Mon, 02 Jan 2023 20:36:14 GMT  
		Size: 37.0 MB (37036710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce249f7bd1ba1509c608f00346513eefdc43d1057010cb6133c2a64a1e6b8d16`  
		Last Modified: Mon, 02 Jan 2023 20:36:10 GMT  
		Size: 1.4 KB (1388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f47b40b2c0437453f27708e6d0f2d91ffa9fe2bbb61bdce8d1a23c025147c63`  
		Last Modified: Mon, 02 Jan 2023 20:37:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ace3b50f8801d2116462a87473e9cc86893fca19b14466e63d5db9bd3fc2588`  
		Last Modified: Mon, 02 Jan 2023 20:37:55 GMT  
		Size: 326.0 MB (326018098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299c3b8170df65b4f278c25b5f360679a36f47e3e176e89427530d7f58bd9847`  
		Last Modified: Mon, 02 Jan 2023 20:37:10 GMT  
		Size: 446.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ff18796c320800b9d4fc15cc39be0c4963d603e421f33d789bfc959332527d3`  
		Last Modified: Mon, 02 Jan 2023 20:37:10 GMT  
		Size: 18.9 KB (18931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f153345f2baa1e9285e566e3c65427093f05e2f406028ab4ff67a8410a6b63`  
		Last Modified: Mon, 02 Jan 2023 20:37:10 GMT  
		Size: 5.3 MB (5324965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef6ee47773963034a9979ead53d8a194b3b78b61a107b4a4b4dab06993d08cce`  
		Last Modified: Mon, 02 Jan 2023 20:37:09 GMT  
		Size: 14.3 KB (14295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd3b595a492d109549348a1df9305530e887a2ffec21d3e6ee1910008faa5fc`  
		Last Modified: Mon, 02 Jan 2023 20:37:09 GMT  
		Size: 2.6 KB (2566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:092b2ae60ec0ea10df20962a84b75046db0560e363a3ed9e9761925a8f058033`  
		Last Modified: Mon, 02 Jan 2023 20:37:09 GMT  
		Size: 188.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e74285214c0861194a67c985c2b1894c44b29d8126587bb767a2701983bce5`  
		Last Modified: Mon, 02 Jan 2023 20:37:09 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
