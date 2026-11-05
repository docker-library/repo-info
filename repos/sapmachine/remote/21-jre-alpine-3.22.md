## `sapmachine:21-jre-alpine-3.22`

```console
$ docker pull sapmachine@sha256:f84dc6c1d1b45da1e99d336717efb52209be9d1c85d52303e5eeeee854dd948d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:763d73a705b39077ddabeb5b61f60101729613ebe5b4379dea167eb5a85868a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66525224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be661316df301f3b71a594119d4ee4bdd09cecf2f9a3ba6bb037c6143358ffd8`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:47 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Thu, 05 Nov 2026 19:36:47 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a6f864491774bd15c5029e443ff33dabfe9a9f00c18c94cd954b40ca370e64`  
		Last Modified: Thu, 05 Nov 2026 19:37:00 GMT  
		Size: 62.7 MB (62730849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e0b26943cab1f4833583a5239d9f161eb75f2a707c4a8affd3e47dbae1ccf8a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.3 KB (434278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a65945466138fc6e7d12355daf751123e5cd24e0e8d80d2b49dc45b2a000b763`

```dockerfile
```

-	Layers:
	-	`sha256:242d81c62f6aa0245da2c07ab7270fb6f86233bb53e1f27a3d60f4c69f58a184`  
		Last Modified: Thu, 05 Nov 2026 19:36:58 GMT  
		Size: 427.3 KB (427298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af214d76f45393dbbde863050253404a55fe2eb4db0485d7bdc0875b0f88958e`  
		Last Modified: Thu, 05 Nov 2026 19:36:58 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json
