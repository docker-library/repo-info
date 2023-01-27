## `amazoncorretto:17-alpine-jdk`

```console
$ docker pull amazoncorretto@sha256:11f4a21348795e3be108637af161d36b4984b58a8b4c5643e0727f7e756097cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:17-alpine-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d2187fe631abea2e7ea42ba48c6d8767eccfab0f9e10b273892d0cb000a4fdbb
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196939661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c75c7f4e86bc6036ed5e1b7595ea1f83f2462b02463d257e027ddefef6026051`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 09 Jan 2023 17:05:20 GMT
ADD file:e4d600fc4c9c293efe360be7b30ee96579925d1b4634c94332e2ec73f7d8eca1 in / 
# Mon, 09 Jan 2023 17:05:20 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:27:45 GMT
ARG version=17.0.6.10.1
# Wed, 18 Jan 2023 20:27:51 GMT
# ARGS: version=17.0.6.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0
# Wed, 18 Jan 2023 20:27:52 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:27:52 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:27:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:8921db27df2831fa6eaa85321205a2470c669b855f3ec95d5a3c2b46de0442c9`  
		Last Modified: Mon, 09 Jan 2023 17:05:45 GMT  
		Size: 3.4 MB (3370628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5118cc5fafe1ee1f66d4de8f6772cd1af8a1fa37c4b7e446396c37f3575c3253`  
		Last Modified: Wed, 18 Jan 2023 20:41:31 GMT  
		Size: 193.6 MB (193569033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
