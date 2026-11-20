## `clojure:temurin-27-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:75da6fcf9dac5703b8eb9afd7603782eb4be20d3a7e581e2814e2035b7c334fe
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
$ docker pull clojure@sha256:a654250307ae87def2138b8a6e1034290f93443332ec68ba38957b3eca0e4a0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.1 MB (228119836 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e40bc20eef76ef3efe4dd73b555c57612df23ac5b6f3c25c0ab9bd2b6b19e433`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:28 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 10 Nov 2026 02:52:29 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 03:07:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 10 Nov 2026 03:07:29 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 10 Nov 2026 03:07:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 03:07:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 03:07:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013e75d38b2fe5bbc4bc23e1222e27c678405808c109729123654e27aa51a377`  
		Last Modified: Tue, 10 Nov 2026 02:57:13 GMT  
		Size: 91.9 MB (91925710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e1ea8f43b74033600649293e5622e0a2226985c1f4aad07966680d540169e6`  
		Last Modified: Tue, 10 Nov 2026 03:08:10 GMT  
		Size: 83.8 MB (83823961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613033bd4dfc4999a11bf7236233c1354996286c1d6b00fed3d247ee00b279d3`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77684d1a569d0a7e452028553813904e72ff7d0f61cead6aecf1a47aa665fec4`  
		Last Modified: Tue, 10 Nov 2026 03:08:08 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ecc20e3d26294e8179a9ebe5b2389dac15d51af64ceddd07c764f56a9bddfa5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7346947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be9d77ac11495623d93f92922630e4f1b73b613ac69735b3215e88effd11c7d`

```dockerfile
```

-	Layers:
	-	`sha256:320832d4d0a00eb6d90b27421bba6a9ee1217863dde339cd2c2acedaeb51cfd4`  
		Last Modified: Thu, 12 Nov 2026 08:46:24 GMT  
		Size: 7.3 MB (7330278 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f76bf6529e477dcf8a7a644c5721c0b164bd9148dac2a8f9c641eb1b85874d5`  
		Last Modified: Thu, 12 Nov 2026 08:46:24 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
