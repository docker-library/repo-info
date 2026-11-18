## `sapmachine:21-jdk-alpine`

```console
$ docker pull sapmachine@sha256:e7a4ff5fa8ca1ae6f578169a0e7b57972aab66f228e7d4c5607bcac0eb05321f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:e221f188d559233ed59ef025256fcc683a65a8ebddf7dac5fd9634849c5d8f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **224.1 MB (224080015 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af81f7687fe1c61541070e9baecf348dda7566a391fb942f4405bc4e03033723`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Wed, 18 Nov 2026 16:42:18 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.1-r0 # buildkit
# Wed, 18 Nov 2026 16:42:18 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 18 Nov 2026 16:42:18 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041cad1b61085443504f4b399de2e6cf513b2fcdf3919a66bc11e8897170c01f`  
		Last Modified: Wed, 18 Nov 2026 16:42:38 GMT  
		Size: 220.2 MB (220227426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:8f0f2b766d1b4a64435c6f58eb0228cf7489453356fbcd6a6974c03ebe2f21ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.5 KB (523510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c50eb6e680171ab6bca41c7cd3e408bb1f027efb173126ef16fdc1ec8658e8f5`

```dockerfile
```

-	Layers:
	-	`sha256:604234c4693f0fd8ecc269ab6efa13f91d599f133bed7c754f766ac458b55957`  
		Last Modified: Wed, 18 Nov 2026 16:42:34 GMT  
		Size: 514.6 KB (514585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7b8c93781cbfe7a48873ffa73d4a98e350878dc85e4fd577bbaf0afa832b8e04`  
		Last Modified: Wed, 18 Nov 2026 16:42:34 GMT  
		Size: 8.9 KB (8925 bytes)  
		MIME: application/vnd.in-toto+json
