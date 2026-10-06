## `clojure:temurin-11-bookworm-slim`

```console
$ docker pull clojure@sha256:187d41dba77c7a6b6cb23d74fa252a4e05112d0a08ac5974ddc942d43fa97199
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c0baa144e3080a67f89a57e6a2b52b09d60ac93c18d6061652a98b7586e4d116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.9 MB (242897675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93f8064cb4951f8fa58717309dc085b27fdf6764da8af15ed9a98dd06103bce`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:11:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:11:46 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:11:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:11:46 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:11:46 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:12:04 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:12:04 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:12:04 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f434a011e8c1279d7d3ad47ad17ca8d63454290861291af4b15b46cdf633c5a`  
		Last Modified: Tue, 06 Oct 2026 02:12:25 GMT  
		Size: 145.9 MB (145864177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f520bb6620af3182ce112a2b33051b84bcb60c3ebddfdf6994434ca5a2ae63f9`  
		Last Modified: Tue, 06 Oct 2026 02:12:24 GMT  
		Size: 68.8 MB (68783529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9964e099f1a4d072723cc8d73e1aa6a69fbe4983c13ddaf314bee61c6636dc6f`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e4787ce7f7c3e266637a0de8dc7b6a0e438d15152e7d77f41b5c8acd4e3f8beb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcea996e5c832a918668db10b619934aa3dac5e13a6dd638f51ab921c739c572`

```dockerfile
```

-	Layers:
	-	`sha256:9d3edee8793fd88fd08a5db73945b38f397377b42b61fd99007d2a7ea0226733`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 5.1 MB (5138824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6bede4f26cdb2247851d146cad1a90a95f85cfdeb8fef4e30f79947ad08217d7`  
		Last Modified: Tue, 06 Oct 2026 02:12:21 GMT  
		Size: 14.4 KB (14421 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ef4de3801c1993bc553a2d823bcc875ba3100d6cfc81b674eb1986260b93e94f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.4 MB (239445888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f49a959fef2c9a266d060892602965e34f19a3f3be502cf3ae62bab6bd007b7`
-	Default Command: `["clj"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:17:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 02:17:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 02:17:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 02:17:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 06 Oct 2026 02:17:45 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 02:18:03 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 06 Oct 2026 02:18:03 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 06 Oct 2026 02:18:03 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51242a5eab062a7af44644c986166d5f8975328f0d5d5cab6a1c131dba83de62`  
		Last Modified: Tue, 06 Oct 2026 02:18:25 GMT  
		Size: 142.6 MB (142576499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c052fe6f902629b0d2d64f67c343ef9d302763771030214915b97bea9032d1d0`  
		Last Modified: Tue, 06 Oct 2026 02:18:24 GMT  
		Size: 68.7 MB (68731564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab1b0aab890225876fdb5a9bb106f1c39e309ffb920e3d004681bfb723a44f22`  
		Last Modified: Tue, 06 Oct 2026 02:18:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4c527a5b0c62ada89469350a0340461821a52b167289e9df9b311424564ecdbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5159742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c49a53d4d7ada74e0bd95361149f6d290fdac8e4986f7f876e6b3bf4090227`

```dockerfile
```

-	Layers:
	-	`sha256:37cc39463176e87028ebcab4bc563d0a864cb3baf526689359c8cc4743333897`  
		Last Modified: Tue, 06 Oct 2026 02:18:21 GMT  
		Size: 5.1 MB (5145203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3d8d52f11d59530869d6f83998d254ff445132c011d5ead50c46f990b89865d8`  
		Last Modified: Tue, 06 Oct 2026 02:18:20 GMT  
		Size: 14.5 KB (14539 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:dedad9a2c51ef3a302fa1264121f75cdb566ec8ccaeaf7a3735f8fb271959e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.7 MB (237677947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f313713fef437059260cf71f9a61effd75f65bb495727ea7abe9b73a2de48dc3`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 07:36:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 07:36:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 07:36:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 07:36:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 07:36:57 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 07:52:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 07:52:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 07:52:08 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:b165d89f1b791c34b9c20f2a31fc4c5d2df2528fb278dbc56b0e78f166c6b6b4`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 32.1 MB (32083564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:435b5fde11a9c421080a95f3631157bd4034967ee5a3c89f7c8b0f52836a0055`  
		Last Modified: Fri, 02 Oct 2026 07:40:55 GMT  
		Size: 133.1 MB (133094699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d01f8438fe05dd91332377cf287d95705d8eb2a786af605ea82903018aedfc1`  
		Last Modified: Fri, 02 Oct 2026 07:52:49 GMT  
		Size: 72.5 MB (72499038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:275c82a9c8b82deb7e5606c69546f5418289657a1494ab7904b1f5f4422467d7`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:6457ea4b6a96537f76a64ac8eb49b908fdef454afb5367c72af2094bdbd0f09d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5157836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed2ebb4eda04ed5db2654688670a933dfa9f32ce68683f19730d140326d1606c`

```dockerfile
```

-	Layers:
	-	`sha256:bb05a18d3bca7efe5573500dc6f94da19dd9efcb8a4511884deea69cea9c9196`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 5.1 MB (5143367 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:54cd5f6011ed83441bf63173e572fe7667480a584b9def3da279f05a65b6e79c`  
		Last Modified: Fri, 02 Oct 2026 07:52:47 GMT  
		Size: 14.5 KB (14469 bytes)  
		MIME: application/vnd.in-toto+json
