## `sapmachine:lts-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:7a27c5f614b6d5a5fb3cb8cadbdde23ebf6b40f81ef70e7aa95d6206ae25a324
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:3df1e6ced92ee9d564d8c5ab33af5ae50d16ef6cd4f360cd2068d7270951f20a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.7 MB (63737370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98c3d1219e8eef1795813cbcc8e116ef77a80ad642bdbec2c951c7f617036e4a`
-	Default Command: `["sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:47:08 GMT
ADD alpine-minirootfs-3.22.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:47:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:13:46 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jre=25.0.5-r0 # buildkit
# Wed, 21 Oct 2026 22:13:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jre
# Wed, 21 Oct 2026 22:13:46 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:63e7e49699e8f5b93162e14c630db8294f87799bfec4376677160876bd6840dc`  
		Last Modified: Wed, 21 Oct 2026 20:47:13 GMT  
		Size: 3.8 MB (3794357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1404ca2d3c271b055717265477c95c8407974a765b923b89c5505727434cd39e`  
		Last Modified: Wed, 21 Oct 2026 22:13:58 GMT  
		Size: 59.9 MB (59943013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:02bad9885d22f0ef4bc21183f9794fd36b6659f5bbae84023b2cbb2ea46c33d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **439.4 KB (439443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48cd4a56e77fac621a9e26eeeb0e1782a54652baa8a76e1c06a144c0cf89148a`

```dockerfile
```

-	Layers:
	-	`sha256:4ddd51ce765275aaaa5d303f57889b5d2d0ca41cd7e545ec372f23856bf70b79`  
		Last Modified: Wed, 21 Oct 2026 22:13:56 GMT  
		Size: 432.2 KB (432155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55fc41870494715f159a1137062f21c8a757873907d84289415b010a412e1bbd`  
		Last Modified: Wed, 21 Oct 2026 22:13:56 GMT  
		Size: 7.3 KB (7288 bytes)  
		MIME: application/vnd.in-toto+json
