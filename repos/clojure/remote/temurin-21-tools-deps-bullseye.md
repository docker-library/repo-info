## `clojure:temurin-21-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:86655d57f7afc5030584e1060dda9520512a8773b02b2b4cf3ec5be19835ca66
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:f629520174cbf1fc79aed845ef468417012c06b3d8a367f0a83ce81bb67a476c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278436100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0220c9480c25352873d2f0cba65d832dcfb4dd4ed18add4d7b7eda85e7c209c3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:03:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:09 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:23 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:24 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:24 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:24 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:24 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:94b0efe6d4f788b1b894c04a6c6885d53a41bcd0b85757fffacd2bc4de142847`  
		Last Modified: Mon, 24 Aug 2026 23:20:41 GMT  
		Size: 53.8 MB (53777392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b2ce760f371e453ea80480d5e42311179c9d93275bf3cf03d22665f8f258d78`  
		Last Modified: Fri, 04 Sep 2026 00:03:48 GMT  
		Size: 158.1 MB (158120314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19682969a4e729daac4c0b6bce83d3d4a9c19f46664356fe9d26bd29ada97b1`  
		Last Modified: Fri, 04 Sep 2026 00:03:46 GMT  
		Size: 66.5 MB (66537353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e93372bf4d688b1dc9442036bcd8296aafbf9fc816778a9ea37759d76a14d1`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7419a8883bdc83cba0537eea45b63869ccfd3bca01dbe7051a5cdc65d591d1a`  
		Last Modified: Fri, 04 Sep 2026 00:03:40 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:1c46fbb4e58db3f35a814f884a6cce91009f683ab0aef25a6ccef6d0a624f9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7428434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e63014c4f593deeddf2f188cd28d053fd19c103a267cdf9bf03238ce87ad9b45`

```dockerfile
```

-	Layers:
	-	`sha256:6c10643fb4c43a4a1e61d02317a657229bd71e5978d9210094b996435eaafd4d`  
		Last Modified: Fri, 04 Sep 2026 00:03:44 GMT  
		Size: 7.4 MB (7412502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2909fd971e07415409c66934d3bffa350f69b88233254100aac687605117fb12`  
		Last Modified: Fri, 04 Sep 2026 00:03:43 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:e5ddef9a3f3184754d26b8a9203923798296a7208c1246ab981fcd93f9d450ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.4 MB (275365039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f2550388948786fbe4416a0c59f94000dd1f181e601a702f6ac10df3c6f900e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:07:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:08 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:21 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:efeeefc1421af2e3b9b27f2b236e6fca6b6df5f1f1d5919c2608f27cc4503c31`  
		Last Modified: Mon, 24 Aug 2026 23:20:19 GMT  
		Size: 52.3 MB (52261343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb2e0914dbbd82192b05bb46f3704b525377e55b1b1745427b6bd6247bbcc05`  
		Last Modified: Fri, 04 Sep 2026 00:07:44 GMT  
		Size: 156.4 MB (156401949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3789d4776a4e08b5b64d07d5799210bc0acea8963a2e16a3d9bd951353b1c30`  
		Last Modified: Fri, 04 Sep 2026 00:07:43 GMT  
		Size: 66.7 MB (66700704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa59024c50849cd0df6fa99e806956c248191740eb37a066e78b5798a1c4148`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5f33c893f2a22c41c3957efcb3c30d105e0216e461dfacf844921fc34fe5e39`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:288fb59af6433a8e61b0fe82dc1ad3b9ad6405d4f4deedbb8ef880bce51ac820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7433650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54705dac07b50143e9b5b85000277993740b0cb92ff13c8e506abcf10be6df0`

```dockerfile
```

-	Layers:
	-	`sha256:b3789b34c8bfe3f16bf0337aa39e13694a2378d8f7112ae681d772fe2d9dca42`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 7.4 MB (7417601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef7e6c928437a7f1de1c394cbc3116d35d243c09ebd7220c1893513087bd0c0a`  
		Last Modified: Fri, 04 Sep 2026 00:07:40 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json
