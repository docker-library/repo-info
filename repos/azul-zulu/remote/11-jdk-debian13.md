## `azul-zulu:11-jdk-debian13`

```console
$ docker pull azul-zulu@sha256:714ad589a489e680224d9fd056f59f131b8ee272890997edad002fe15dd4ca11
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:11-jdk-debian13` - linux; amd64

```console
$ docker pull azul-zulu@sha256:08ec22521bf8d82d7a99fa676b55844dbcc4e56e87b264165b63fa01232f84b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177372242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c5f2e1c24f3170dd86647e58076f56b0807f73df46f28c72c7e9aaab1ff188`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:02 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:02 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:02 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:02 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eff80d0d1a54f2555c7ac814d554bc926460d15d0ea9a9cedbac8976c7c599d`  
		Last Modified: Thu, 23 Jul 2026 22:29:16 GMT  
		Size: 147.6 MB (147591337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:4191d4b0a5a3c6a0264ccefc33a66c74da79398b48459ac0e8962ba2c866ce2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d7d4ad84dbdfe76a585c8e465a74762c3aa2597d33748b35ad3910b7868bf69`

```dockerfile
```

-	Layers:
	-	`sha256:f4e6021a510bcb4a5e8a7238d3cff4f4cdcf5bddc4be5ccbdaf4da4642beeef6`  
		Last Modified: Thu, 23 Jul 2026 22:29:12 GMT  
		Size: 9.5 KB (9506 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:11-jdk-debian13` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:0a884e553984aa4f7488ca546c91c354e847b408798ffb3cde30d0e6182c78d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.4 MB (177403895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c564896e490de36874c563a7ae80b796e86802d4cf4afe01a7cdb2c5616c284c`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 23 Jul 2026 22:29:58 GMT
ARG REPO_HOST=repos.azul.com
# Thu, 23 Jul 2026 22:29:58 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 22:29:58 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu11-*\nPin: version 11.0.32-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu11-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Thu, 23 Jul 2026 22:29:58 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu11
# Thu, 23 Jul 2026 22:29:58 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a94924c14640a96da4cd06480aa431cf0d0e297eb2a62c105b1fcf094cc450f`  
		Last Modified: Thu, 23 Jul 2026 22:30:13 GMT  
		Size: 147.3 MB (147260190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:11-jdk-debian13` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:f2ee5ce388376ce5dbe5cfcc8434ba9cbf411905e5248bca6aedbd03abcff74f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a237b8b7f117865be8777b8ce9ca596819307cc4cdcb20ff63ff34c45b8039b`

```dockerfile
```

-	Layers:
	-	`sha256:4faf49528e517618a6e1a2e5b07c53d08afcadf0bb8d4eadad9e77ccd1216828`  
		Last Modified: Thu, 23 Jul 2026 22:30:10 GMT  
		Size: 9.6 KB (9623 bytes)  
		MIME: application/vnd.in-toto+json
