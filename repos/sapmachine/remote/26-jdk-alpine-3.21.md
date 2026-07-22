## `sapmachine:26-jdk-alpine-3.21`

```console
$ docker pull sapmachine@sha256:bdc5521ec35c815fa9944efc5b47bf767de5944726f020280f617cffe02535c3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:26-jdk-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:6a490f39ff2a1fee1d6d71de0f838ed339a1ff91f96be70228d078f24533b07f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.2 MB (144202798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22bae245c6a621607e4607dc9202de80926aff8373b662ba66fff3ad18c675ad`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Wed, 22 Jul 2026 18:23:38 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jdk=26.0.2-r0 # buildkit
# Wed, 22 Jul 2026 18:23:38 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jdk
# Wed, 22 Jul 2026 18:23:38 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b583d59ca3d694a71003e40ca93a80b1f8d7aa1fd2d68150b65ddf0f7c8f7f3`  
		Last Modified: Wed, 22 Jul 2026 18:23:55 GMT  
		Size: 140.6 MB (140555923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:26-jdk-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a0e7ae950919a7de576bd35e1dffdea5a84942a74fd86cdaafeb7006d9641d5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.3 KB (466294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d572550b49fab17aad1b914ab8133f83989e6d2c535604a6f6200f8f4e062f4`

```dockerfile
```

-	Layers:
	-	`sha256:a1a02454b4a25d38b507edcee6061083a2a757ea31e8f56870bafbda781cd741`  
		Last Modified: Wed, 22 Jul 2026 18:23:52 GMT  
		Size: 458.0 KB (458040 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c50c18be8089401a9b75f2087b92c5898690085fce9ebdc34f8bf42958b1d387`  
		Last Modified: Wed, 22 Jul 2026 18:23:52 GMT  
		Size: 8.3 KB (8254 bytes)  
		MIME: application/vnd.in-toto+json
