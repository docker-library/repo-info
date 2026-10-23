## `sapmachine:lts-jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:b4fc0dba544f3fce43892dbed5f35c8e2a53c6b6d50f884ab27b6a8601d6a266
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:f615886d7a18d746119527d3f093e9d5ec27ec39bdcca40ef0361a62f00616ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.2 MB (64223147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1245f6ea35818aea71155f11577532e1088d51b339c942177c6b9bdc74f2e685`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:56:05 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:56:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Fri, 23 Oct 2026 16:56:05 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a58b5f49846ded6ad1477bcbfbc484059f93f17661886f849f8fdec7eea0817`  
		Last Modified: Fri, 23 Oct 2026 16:56:18 GMT  
		Size: 60.4 MB (60370920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:aba319e11790341060ee954cf336e90eafeb74cda9404f77d9ec77965f2ce757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **442.1 KB (442091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464c05aeb18c037ecbef954bd0438c2de4d84008e841b3b721928b9b5072b6c8`

```dockerfile
```

-	Layers:
	-	`sha256:28485f82a8356b85d6548a4919c4c431c4083d4f4a4bcbf4142c648e89a02616`  
		Last Modified: Fri, 23 Oct 2026 16:56:16 GMT  
		Size: 433.8 KB (433809 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0474fc7f9d69228b5a3448cc5653a55fd46a90bee579f546b992907b83f10139`  
		Last Modified: Fri, 23 Oct 2026 16:56:16 GMT  
		Size: 8.3 KB (8282 bytes)  
		MIME: application/vnd.in-toto+json
