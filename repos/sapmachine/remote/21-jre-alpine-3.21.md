## `sapmachine:21-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:1eacc68753a09704276b644c7d07acf1be11668f8b448ba464fc357c14688a82
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:247fc70910aef99874a76a5ee249b48680743b9d428ffc879b32f11d7f008bcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66113923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d111885bf31e5070c94c97a9c884f845fcc14f08d6e21040798feb5f0b080544`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:25:29 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.12-r0 # buildkit
# Wed, 22 Jul 2026 18:25:29 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 22 Jul 2026 18:25:29 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca1d054f9f267faffbb798edf9e7dd84a6a8a17975005eef063bb408dbe1b8fd`  
		Last Modified: Wed, 22 Jul 2026 18:25:41 GMT  
		Size: 62.5 MB (62467048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:96e4b0d73cc99125228c9d3b5ad7c93686a1937a9a3b038c1ef433b461e46cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.1 KB (435131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6d93733af7961d01e95746ba12093567ea26e5f2aa829773645299b7d5fe07d`

```dockerfile
```

-	Layers:
	-	`sha256:c1d6a6a0d657d7c9b9fc14d7006d16ae0e905a3c92527cefebfe688b6ecff4a9`  
		Last Modified: Wed, 22 Jul 2026 18:25:39 GMT  
		Size: 428.2 KB (428171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b32e29cced1e6765d2a4b9f27ef6140c90b14cff15e69f58e467bbfb71e66b3`  
		Last Modified: Wed, 22 Jul 2026 18:25:39 GMT  
		Size: 7.0 KB (6960 bytes)  
		MIME: application/vnd.in-toto+json
