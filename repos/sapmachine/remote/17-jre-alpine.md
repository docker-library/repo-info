## `sapmachine:17-jre-alpine`

```console
$ docker pull sapmachine@sha256:7525f077897cf5508b0f40d68514db2e94031f8d755b3f9dcab29c2fd2968113
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:17-jre-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:78261487918f6fce3d1fd79c7b0e5563741afcacdc83c100135b69b15853141f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.9 MB (60871428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f31dfad94b82312cd92c4d594b8a55cd3770cfd73f26ff223afccc2ec49f65a`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:57:50 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-17-jre=17.0.20.1-r0 # buildkit
# Thu, 17 Sep 2026 21:57:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-sapmachine-jre
# Thu, 17 Sep 2026 21:57:50 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ee22c47e39cad60b3332d892fcfd552ebbb147e040d01fd49e170bea8ec6fed`  
		Last Modified: Thu, 17 Sep 2026 21:58:02 GMT  
		Size: 57.0 MB (57022921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:17-jre-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:fd2bedea3d059a1dde731a2db013da1a5ae1647cf7669330dcf662a0198b62b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.9 KB (434936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed541f17adc14d15938f41d1ee19d2e1cdfcc1ca519d1a7aaafa35d625e3f321`

```dockerfile
```

-	Layers:
	-	`sha256:cf92c20641ae27a841016f480996f940145df6cd296c5a7aa43f07595320ae64`  
		Last Modified: Thu, 17 Sep 2026 21:58:00 GMT  
		Size: 427.3 KB (427312 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359cd4f2d0991cef92c2a6effa80b49433fdaabc03f8feb77936480d52b16204`  
		Last Modified: Thu, 17 Sep 2026 21:58:00 GMT  
		Size: 7.6 KB (7624 bytes)  
		MIME: application/vnd.in-toto+json
