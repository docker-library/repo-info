## `sapmachine:jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:cb5e61547161611c1cc390175982eac6602c53acef4d961f27cf922c0812b61b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:62def80661547f80122fa80c7f0485368ddfd8697f9021209afd220ce5b48481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63681924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aa2781be40bdee9e31b9c74f5a00abc9d159dba5cd92446cd8f86132ea966c2`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:12:28 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27.0.1-r0 # buildkit
# Wed, 21 Oct 2026 22:12:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Wed, 21 Oct 2026 22:12:28 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a72430e00aeec81b8d9dbcb6d41dba19455dd764c43b3186c5c4bd76ce696f`  
		Last Modified: Wed, 21 Oct 2026 22:12:41 GMT  
		Size: 60.1 MB (60056529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:dc47944bacbd0310d3aebcffb6ad7d3664d6f2fbef1a61031608177f642d93d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.2 KB (438243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eadeaacdfff90fd8ca3ed124ef3fd5d93ff1fc0af23742527728fb8e1e51d6fd`

```dockerfile
```

-	Layers:
	-	`sha256:c3671a557c5dd110218ae99f4c78305145bd4fa5ca76c702dfa86bf9840820c7`  
		Last Modified: Wed, 21 Oct 2026 22:12:39 GMT  
		Size: 431.0 KB (430962 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd2259594b1f710070005f4f7608cc9694a39d427a90f432a684e767c38855b2`  
		Last Modified: Wed, 21 Oct 2026 22:12:39 GMT  
		Size: 7.3 KB (7281 bytes)  
		MIME: application/vnd.in-toto+json
