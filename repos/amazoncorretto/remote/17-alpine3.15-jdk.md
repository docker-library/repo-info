## `amazoncorretto:17-alpine3.15-jdk`

```console
$ docker pull amazoncorretto@sha256:596d184b1b6760419dc666403ae9d166d713f6e13c9e6702052946c8073df964
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 1
	-	linux; amd64

### `amazoncorretto:17-alpine3.15-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a8d48b6a537c72ebf1a3e270d68d5508db4947d8e9b0be92e549ef401e9fbb5f
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.4 MB (196392944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8003b9ba177a277f01b832a8d9024b1de1309974c46cdf3bbb649ac062ee26a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Wed, 18 Jan 2023 20:27:25 GMT
ARG version=17.0.6.10.1
# Wed, 18 Jan 2023 20:27:31 GMT
# ARGS: version=17.0.6.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0
# Wed, 18 Jan 2023 20:27:32 GMT
ENV LANG=C.UTF-8
# Wed, 18 Jan 2023 20:27:32 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 18 Jan 2023 20:27:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e41d66cc091e40316049de8a2f6bfa95234317917671299e8b3cae40961b2401`  
		Last Modified: Wed, 18 Jan 2023 20:40:36 GMT  
		Size: 193.6 MB (193569432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
