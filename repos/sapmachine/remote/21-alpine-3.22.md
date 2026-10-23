## `sapmachine:21-alpine-3.22`

```console
$ docker pull sapmachine@sha256:a22585502ac49629008efdb533fe7c67c06898c68539188f8508484624ac29a0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:3da56fb401802a8434e4d3dd81ac582e229c7191837835db757a29d1ed70dfda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.6 MB (223579470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e540b1889a54b2f9bcb72d549bda593112499ca89b69379d865b1c3450cb4538`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:57:47 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.13.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:57:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Fri, 23 Oct 2026 16:57:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2561351d2296ebd1b242887ca82ea7116077dec2c8f96c225e5462ced2f01e38`  
		Last Modified: Fri, 23 Oct 2026 16:58:10 GMT  
		Size: 219.8 MB (219785113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:72bb48ad49409c10d20339b5eb3b6a2effad841b695b2085404960eb823f58c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.3 KB (520299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6cf43e969caa621da014a02fabd976ad97e456c61a3b965813b48f6e335c533`

```dockerfile
```

-	Layers:
	-	`sha256:89f608ff4cc82dc09880e94b684fe41bdbdbe43b99c03b63a8ba1effc0ccb514`  
		Last Modified: Fri, 23 Oct 2026 16:58:06 GMT  
		Size: 512.7 KB (512653 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4c23c1b56339fd955072e2f4e077576202fb74673fc96bcc5b1416714e37efa`  
		Last Modified: Fri, 23 Oct 2026 16:58:05 GMT  
		Size: 7.6 KB (7646 bytes)  
		MIME: application/vnd.in-toto+json
