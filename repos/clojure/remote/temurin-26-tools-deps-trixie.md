## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:5d3ee231d5ebf816ad82cadfc7904b67338518bf2cd83dba2264264fe313c80c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:8791828af2e6eb88d0ed15ca880f97193be61f0325af311df3aea7c17cd681e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.5 MB (226510888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cb0c7959d408873fd6e834be2ad6ba672c479ad3d5b61724b3a824c7a555391`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:26:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:26:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:26:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:26:12 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:26:12 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:26:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:26:26 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:26:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:26:26 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:26:26 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c398b6ac30a0a6dc227afc634c04a652cd314c7a8f092207a54ab1a4de2d685`  
		Last Modified: Fri, 25 Sep 2026 23:26:50 GMT  
		Size: 94.6 MB (94563471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d867490b094c6484ed0c978d00246e9c4f2e1839530c8222e4ab8fac3f5695ef`  
		Last Modified: Fri, 25 Sep 2026 23:26:50 GMT  
		Size: 82.6 MB (82566677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291c29639613d11c9ca9e44be4fad0f916c2a6deae4ad46191360fcd630bc2b4`  
		Last Modified: Fri, 25 Sep 2026 23:26:47 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45b1fa89819bfdb6c939878bc01f7a383e6a469fb9afc94bc7393f3aa73a4949`  
		Last Modified: Fri, 25 Sep 2026 23:26:47 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:b53889e8feea422615ee1e22e44a2fccf2e43e07f386d5c02c2ea979626d51d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7459614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37b1c18092a1ad068ea188d7273f4bcd5c99041bee26aafbc72202751a3cd10`

```dockerfile
```

-	Layers:
	-	`sha256:6205da2a4861f431dc1fa98c7dc4839276a5ebb0b26eb94486d9276b41ed82d8`  
		Last Modified: Fri, 25 Sep 2026 23:26:48 GMT  
		Size: 7.4 MB (7443713 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29d388f8acd609ecfa964b6fd36d3880396d4782e88bdd566aaaf99362d49497`  
		Last Modified: Fri, 25 Sep 2026 23:26:47 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:cee7b901fa13a1b1fbb005e90f8d86e90ceb23fa696f8f049b3a7647e041f5b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.7 MB (225682721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b754b1dd8e0a48e9a8ef75b92d0ca9fe3f18cb52d26ecd46dcdb8c5f03cddb2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 25 Sep 2026 23:24:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:02 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:24:02 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:24:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:19 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254c83eedfa4201525d48c311ce06711e8d884acd7269ab6de947e667802841f`  
		Last Modified: Fri, 25 Sep 2026 23:24:43 GMT  
		Size: 93.5 MB (93543595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a4721916dbe3313f0b15f36eb3007169c9b32b47b6baba26c18549587b4696`  
		Last Modified: Fri, 25 Sep 2026 23:24:43 GMT  
		Size: 82.4 MB (82389250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9654795fac623430e0f3128adf6c408a8c2749329b157652dd1d8165bfe0ff8`  
		Last Modified: Fri, 25 Sep 2026 23:24:40 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36eeaceb573e371c52bd42c3df48e264661a01526f73a53feb159554cb9340b9`  
		Last Modified: Fri, 25 Sep 2026 23:24:39 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f2d3ecfcc3aa422de6e1b8c223f27fb7c3aedb96186f56b92e1c07b9658b1046
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2fe47df8007f3ac893a62459031042b29061f3c1d0332dd4eef362048e3808e`

```dockerfile
```

-	Layers:
	-	`sha256:68376183f036708bc885ed0b71186a9aa7f6b45048e1643338599f0bb40c0769`  
		Last Modified: Fri, 25 Sep 2026 23:24:40 GMT  
		Size: 7.5 MB (7450103 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c539ddd0f22cce3a53ffd3261e7cd45cc3027d6f3f8ae625576180df999f7a7c`  
		Last Modified: Fri, 25 Sep 2026 23:24:40 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:a85bc33a3b506c6b695c3ab09e43851102ec8f35dec5ce8732dc363140375768
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.5 MB (234537591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20f392e67c85a5f9ad520c613e72538ec4a56748005d25115f8c1de32ba3f6a5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:48:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:48:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:48:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:48:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:48:51 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:56:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:56:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:56:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:56:54 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:56:54 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97818a0dc9b01dc3b4304e7d1140df380e6f733d7e82c2323a42ed56ff550f7`  
		Last Modified: Sat, 26 Sep 2026 05:52:07 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a7c86642e6e98b8bf1e6ad12428d67586d6964c6d9927d05e6e7436efb5be1d`  
		Last Modified: Sat, 26 Sep 2026 05:57:34 GMT  
		Size: 88.0 MB (87990614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7c460e3dfee95ed047e280871f8caa2d22aad5aa021fee66c10f811c4ecd82`  
		Last Modified: Sat, 26 Sep 2026 05:57:32 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbd40591fe6173fb8f4ad8aac07aeb51464c9ae5c1f4eceb798bec8880565604`  
		Last Modified: Sat, 26 Sep 2026 05:57:32 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:254a4a24fa912aa516bc26cf206ba0560927fafcb0c3dba3ce4223c933480dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7448016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf817f58b220301c478b8cb8ea6a54a359a13266770b51c23878fc81d6ae0910`

```dockerfile
```

-	Layers:
	-	`sha256:ccc15527795c8edfd1142ca7305ac7411310226451c3877b1a1531f0e2fe70f6`  
		Last Modified: Sat, 26 Sep 2026 05:57:32 GMT  
		Size: 7.4 MB (7432068 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4dd452d6d6fa9e25f8bbda729c6bf84c0196ae677a04ef63626948a8170f23b`  
		Last Modified: Sat, 26 Sep 2026 05:57:31 GMT  
		Size: 15.9 KB (15948 bytes)  
		MIME: application/vnd.in-toto+json
