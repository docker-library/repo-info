## `sapmachine:lts-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:32085cea9ee64ed3a0e96240e1e6b5934d3b07926e04203749b49da1ca35f18c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:777a105ce8119a3c09c2b98b9acaf58cbaffbe0abc5b5d574d09bd024297762a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63440735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96c372da1eff131fc3e3803063507ea203af46d886dfa82ebdb20319cf52ff5c`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:19 GMT
ADD alpine-minirootfs-3.21.9-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:19 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:51:56 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:51:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Mon, 26 Oct 2026 17:51:56 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:759efa4719c9a44e7f2561a03bff2434dd66e99c916d2e4d50b055bedf554144`  
		Last Modified: Wed, 21 Oct 2026 20:47:25 GMT  
		Size: 3.6 MB (3625395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e01cd5386672eed830e8510fd8eee96013b7626d4c2928c9621453d2bcbdd38`  
		Last Modified: Mon, 26 Oct 2026 17:52:08 GMT  
		Size: 59.8 MB (59815340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:1eada731c85c2cb7fc0367bddca2ad3718e8a877990e5250af26a547224c1be4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.4 KB (440385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401846cc9a801f1b1d0bec66da21b14298002cf084c1c4582d6966a630b82bdf`

```dockerfile
```

-	Layers:
	-	`sha256:86d4ea461dcf7247e28f9efe00b6feda2517d21ee63bfa9f0c71ce682c51d17a`  
		Last Modified: Mon, 26 Oct 2026 17:52:06 GMT  
		Size: 433.1 KB (433080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c8242aa80a3df4db6a2b7662d54287c43756a086bfd2664634fbe09b73d0205c`  
		Last Modified: Mon, 26 Oct 2026 17:52:06 GMT  
		Size: 7.3 KB (7305 bytes)  
		MIME: application/vnd.in-toto+json
