## `sapmachine:jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:27377559a1b8e59cda920d51be2670e7fcc776e900d210e165f6626410a3b560
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:77f2e4587c24e3ab8f2e170cfec42b85a14ac3bc48a981a8cd777b3d53bbad71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.5 MB (64450712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7b09f524ec605585f62fdd0400890cb322cf9fbc3bd4065853241425bbf0ee7`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:33 GMT
ADD alpine-minirootfs-3.23.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:33 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:56:11 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jre=27-r0 # buildkit
# Thu, 17 Sep 2026 21:56:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jre
# Thu, 17 Sep 2026 21:56:11 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:d0c1d894c237d8192cbcd37e435031ad4eddec173299568a5a05869c2e40dfa3`  
		Last Modified: Thu, 17 Sep 2026 20:37:37 GMT  
		Size: 3.8 MB (3848507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d36a06c6e07830ccb1f9246a768382a7b2da3ca07e33c4763cfa6370e79017cb`  
		Last Modified: Thu, 17 Sep 2026 21:56:24 GMT  
		Size: 60.6 MB (60602205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:83bfd612638303c1576a1d524ab9524c58e535287a90a765e84d3922816a860f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **438.7 KB (438730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28b02f828936c2735b057b343a5e652f1bc853c10196ccacae7bbb77a4d24208`

```dockerfile
```

-	Layers:
	-	`sha256:27962407e5f277941af96412fc9dd3ca83799cafd0f5c5c9c0e1d1aa49841851`  
		Last Modified: Thu, 17 Sep 2026 21:56:22 GMT  
		Size: 431.2 KB (431161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f699f2130f6df6ef89a32a638cfa93acba6922df634ff43cd1b9cc670bae5fbf`  
		Last Modified: Thu, 17 Sep 2026 21:56:22 GMT  
		Size: 7.6 KB (7569 bytes)  
		MIME: application/vnd.in-toto+json
