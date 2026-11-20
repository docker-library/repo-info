## `clojure:temurin-27-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:b73922eb137724e200933a0daab4e55d6a704d4851a276ab04b997638cc8c23f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:e675c99dcf2b64201e9600984e851ae3a94049fb2f5e5e80c8cb2e39b3a69ca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220177518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a83a764dfd168f466e86ecff7d1579971ce3de048c5538b732c4d0cf337ee029`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:12 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:12 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:26 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71987727f28153bfc329064d2ab3b21eccbb69e4d96166711fbcddd331324e5`  
		Last Modified: Thu, 19 Nov 2026 22:09:47 GMT  
		Size: 93.6 MB (93647847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42fdc7eda789bf3a0e1df009c146bcc1b484649d8d33a4334adf9d4ddcc4dd14`  
		Last Modified: Thu, 19 Nov 2026 22:09:47 GMT  
		Size: 78.0 MB (78001644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d525919b0f8f631215bc21e9f990af4d0c0d0f3c8a524ad6d03cbccd5638cda`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45d9ed9b287093a06f74d3096cb62569896db3738f4c57581463d00a383ae8ee`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:0c0c60bc648620ecab21d7cff563bfa4a8c34586a6e9fc14a71a4aba4718f41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7359590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f9af7a55b1791391d6114a27f108e6af5073a13c1666976e9310e3cbb1dc454`

```dockerfile
```

-	Layers:
	-	`sha256:535d6db8473c30b65172899b252d3c674024896b2f24c121925c84b421981620`  
		Last Modified: Thu, 19 Nov 2026 22:09:45 GMT  
		Size: 7.3 MB (7342981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55cf90a79cd75afc4d6b9eb23586910ff51161e8562fee7d30ce767f10d3fd16`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2bc20435166debf32029b1bd3ee55bab011420cd60fa3020fa5675232270aa23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219071900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c700800f17ea9fc047591e2a5841a4171901bb1867f56d2c735caaf383aff52f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:09:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:09:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:09:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:09:09 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:09:09 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:09:25 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:09:25 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:09:25 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d58a9ef3026141b458101e81b6b9fcdfe64a717c86bc92cabc54ac976cb1c4b`  
		Last Modified: Thu, 19 Nov 2026 22:09:47 GMT  
		Size: 92.7 MB (92660413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fbdd8a6a11fca6d70d66849f738a183fb6de5397aef77fb18a1052d334f6bb2`  
		Last Modified: Thu, 19 Nov 2026 22:09:46 GMT  
		Size: 78.0 MB (77997483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c9be325bf8d13f722c2990172817ebdc2270906703d6c32cc0a8565686cba9`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 617.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7dd862d02d401c29e7d750933a7468a99b2027f68cc6c2294afc1634b6ef91`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5455241cf6b94b4c19371bf25409c94a125619b0d24d08ee287cef96aa5432d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26f936cd95758e9142b77588cba0fa0106dfc09b733356a148336f85a6266b5c`

```dockerfile
```

-	Layers:
	-	`sha256:e6dd7627615e34db6eb3adb469e1604835ed0ca23ba6990fa0658052c4a1bb6a`  
		Last Modified: Thu, 19 Nov 2026 22:09:44 GMT  
		Size: 7.3 MB (7348765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5a41c1b4c6cce40c4c4c64aa330a0dd3bb521222fe52efb3e27e99b0fefed3e1`  
		Last Modified: Thu, 19 Nov 2026 22:09:43 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:90bfca48f31b7202b17441f049720626ab55e37a1faed459b0d1faa7a4950ab2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228119950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b087e5d30a4c113c07bbb49f33ff51c8f0405d91ea072a4d24e66441aad4b5e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:54:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:54:49 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:54:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:54:49 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:54:50 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:55:42 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:55:42 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:55:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 01:55:42 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 01:55:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64ea7b3b242b897d46e414c1ffe6c7c055394e0d74b17b7999f95dfc2a7cf22`  
		Last Modified: Fri, 20 Nov 2026 01:56:31 GMT  
		Size: 91.9 MB (91925755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dd14124613698d9f1c66235ee9f959be91e4eb5af4bac9ff169cdae7141ac87`  
		Last Modified: Fri, 20 Nov 2026 01:56:30 GMT  
		Size: 83.8 MB (83824027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb94308f75457b772d36889b18cfd2f7ec27aac04a2d398ac83bb06e7134a`  
		Last Modified: Fri, 20 Nov 2026 01:56:27 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6201c53936d809a2703fe8e042d0a9656e47c122f19e8e90e8416b71b7c17124`  
		Last Modified: Fri, 20 Nov 2026 01:56:27 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6886668bf34f1f6f3aea97e6c1627a1de8e9ec42acb2f2d8acf6ecafa0090e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7346949 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a45e596cd2d4abe266d49deedb245f4acbada44ea10479b3af2bf028bb5a64f1`

```dockerfile
```

-	Layers:
	-	`sha256:a6ac828811dc5089241ccce69e3adf7702a2067ab92cc9a9bd1ac7ce7dd91344`  
		Last Modified: Fri, 20 Nov 2026 01:56:27 GMT  
		Size: 7.3 MB (7330280 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:728223dd154b7dd91ab2ef3e0558d063efbd18abe641c6fc2492890caaadc0a4`  
		Last Modified: Fri, 20 Nov 2026 01:56:26 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
