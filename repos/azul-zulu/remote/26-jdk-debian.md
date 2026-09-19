## `azul-zulu:26-jdk-debian`

```console
$ docker pull azul-zulu@sha256:28f3e2774b8f1390ba409a97477fb510c2856659b3abe9419ba61000ee5783ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `azul-zulu:26-jdk-debian` - linux; amd64

```console
$ docker pull azul-zulu@sha256:978f3f2f51b717fd5c2db3da0fd6199133e426ab71383e795e2dee785b7e3b14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217339666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c620af40dd0252f0d00a82e59bd4bd46ae583e0736068673587ce7db85d493`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:44:05 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:44:05 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:44:05 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:44:05 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Sat, 19 Sep 2026 00:44:05 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6b37362b3da78869050b894b799ad4df04f1f3b52774087db0d81151570244c8`  
		Last Modified: Sat, 19 Sep 2026 00:06:05 GMT  
		Size: 29.8 MB (29830418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f993e6ac663d54ed31885737049dc26f328060d22bdc59e416c51fe012f8a370`  
		Last Modified: Sat, 19 Sep 2026 00:44:24 GMT  
		Size: 187.5 MB (187509248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:952ed1b9a4c1f648838e0fe7c9591e1a8de8b2bf4a5ecce4966edfc2afab3524
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 KB (9510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:309e920a124c57da059c870771c385fffedb3dbba383ccf4955e039324c8c23f`

```dockerfile
```

-	Layers:
	-	`sha256:a39632ce96cf712d6d8373c75e44b586b32df9c5de841678066b33c14a75db4d`  
		Last Modified: Sat, 19 Sep 2026 00:44:19 GMT  
		Size: 9.5 KB (9510 bytes)  
		MIME: application/vnd.in-toto+json

### `azul-zulu:26-jdk-debian` - linux; arm64 variant v8

```console
$ docker pull azul-zulu@sha256:d9c5166de821d1e943ed3d161c3ecdd18b11dd6d9890128f77375dd9ebd4440b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.4 MB (217401335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9a9419dabbc865174ee6ec3bc7f241e8e6149df45dbd6b0046787dad3205cd`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Sat, 19 Sep 2026 00:46:46 GMT
ARG REPO_HOST=repos.azul.com
# Sat, 19 Sep 2026 00:46:46 GMT
ENV LANG=C.UTF-8
# Sat, 19 Sep 2026 00:46:46 GMT
# ARGS: REPO_HOST=repos.azul.com
RUN set -eux &&     apt-get update &&     apt-get install -y --no-install-recommends gnupg ca-certificates curl &&     GNUPGHOME="$(mktemp -d)" &&     export GNUPGHOME &&     curl -fsSL https://repos.azul.com/azul-repo.key | gpg --batch --import &&     gpg --batch --export --armor '27BC 0C8C B3D8 1623 F59B  DADC B199 8361 219B D9C9' > /usr/share/keyrings/azul.pgp.asc &&     gpgconf --kill all &&     rm -rf "$GNUPGHOME" &&     echo "deb [signed-by=/usr/share/keyrings/azul.pgp.asc] https://$REPO_HOST/zulu/deb stable main" | tee /etc/apt/sources.list.d/zulu.list &&     printf 'Package: zulu26-*\nPin: version 26.0.2.1-1\nPin-Priority: 1001\n' > /etc/apt/preferences &&     apt-get update &&     apt-get -y --no-install-recommends install zulu26-jdk &&     apt-get -y purge --auto-remove gnupg curl &&     apt-get dist-clean &&     java -version # buildkit
# Sat, 19 Sep 2026 00:46:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/zulu26
# Sat, 19 Sep 2026 00:46:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:bd36565c0fdebaf0f3af5c3b4ce610ca085ced32e9e9da850d95912f5f18f47b`  
		Last Modified: Sat, 19 Sep 2026 00:05:57 GMT  
		Size: 30.2 MB (30189691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a377710f4d535bddea5b7e3e984ab47b49cd19e40dcb7d06d51995cd82eae9b0`  
		Last Modified: Sat, 19 Sep 2026 00:47:06 GMT  
		Size: 187.2 MB (187211644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `azul-zulu:26-jdk-debian` - unknown; unknown

```console
$ docker pull azul-zulu@sha256:9db5aabf9206e21f6cded58a3f64e3e5140f5b00458e8875c89602b3973aae1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 KB (9626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9104136e69a63b673809969bf284168934ee25650cbb30b1d145b7ad56d2b372`

```dockerfile
```

-	Layers:
	-	`sha256:8d41f83dc938c8ab4cd47fbb24c4ec93a4c5e6dc5088e95695929b4c459e448f`  
		Last Modified: Sat, 19 Sep 2026 00:47:02 GMT  
		Size: 9.6 KB (9626 bytes)  
		MIME: application/vnd.in-toto+json
