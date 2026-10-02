## `clojure:temurin-21-tools-deps-trixie`

```console
$ docker pull clojure@sha256:86f70e451205e0c24be23cc8a2d0204d85bfd5a7611f44a77eb5aa73a31daabd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:ae91727a0729b2508838f3749dace9ed2d51ab0d0d255e3581f11d8a1aba5ec1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 MB (293050771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79afbe1da24e2a7bf73a68673bcded4fb9c6e878aca9f20ca76cd33b4dd6520`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:48:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:48:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:48:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:48:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:48:03 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6eefb2f5d3e91a6cfc577476bbec26bb63f0d0fc31f904493f400833783aa2c2`  
		Last Modified: Sat, 19 Sep 2026 00:05:52 GMT  
		Size: 49.4 MB (49379699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7022390713693a9ab086d6b84489d37975caebc4614fde83b15310facc1eef88`  
		Last Modified: Fri, 02 Oct 2026 02:48:46 GMT  
		Size: 158.1 MB (158117550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d6d8a9833e56054210964302020969d88af0e0cb4d648e7ae95fb96ddecd24d`  
		Last Modified: Fri, 02 Oct 2026 02:48:44 GMT  
		Size: 85.6 MB (85552481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aaa3a0dca1f2e83580f072a54988b366e3cabbcb54a50dac51f9f25fd0c92bf`  
		Last Modified: Fri, 02 Oct 2026 02:48:41 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c95f2c20800ae1aac79447121d8bcf21bc0057651885b8271641bc9bd6e4a3f`  
		Last Modified: Fri, 02 Oct 2026 02:48:41 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:917bcfa39ebfa919e563a91b530a0bfc8e1ba269e8616b2f9eff3125ff2c153e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011aad1f9fd80935c713356aaa1b2db1faaeee25b5f952cc0ed20782942b6e2a`

```dockerfile
```

-	Layers:
	-	`sha256:094666ca30a52eccaa6cdba15b0fc7429fb5817a83fe1ce4ee4442a8614cad8a`  
		Last Modified: Fri, 02 Oct 2026 02:48:41 GMT  
		Size: 7.5 MB (7480672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4edba1667172087b36efbadcdde25e707248182c60e2718a1fcd51cc45cca48e`  
		Last Modified: Fri, 02 Oct 2026 02:48:41 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:101dc77edf52d98fdc2f1d27631618f0206186f558141021f54e8e5da3a9a426
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **291.9 MB (291884644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42fab80e421c3759cb0397a523ca527b070bf084a34ab9849405afa1d9594059`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1789689600'
# Fri, 02 Oct 2026 02:47:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:47:50 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:47:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:47:50 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:47:51 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:48:08 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:48:08 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:48:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:48:08 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:48:08 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ccd9dba13ae33c050c13176f84743269a9457dcb0cfd091e368aa5131dd9e9c7`  
		Last Modified: Sat, 19 Sep 2026 00:05:44 GMT  
		Size: 49.7 MB (49748836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54980c8f87dccf9162445a998f67f2d0714d0a62a447925b95c61db56f34e353`  
		Last Modified: Fri, 02 Oct 2026 02:48:33 GMT  
		Size: 156.4 MB (156400690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b04a70e352b36af4f5a06103431766e11b6eaf58336a5fbf9993952bcf2c607`  
		Last Modified: Fri, 02 Oct 2026 02:48:32 GMT  
		Size: 85.7 MB (85734080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f167e42ab79bbc96b36f01581a6094d7a39f8a79681a4788872e3e829b74de94`  
		Last Modified: Fri, 02 Oct 2026 02:48:29 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d302bb21b545459d8bc0055bd41bc3181185401d8242a0857f015f3f23cd9f`  
		Last Modified: Fri, 02 Oct 2026 02:48:29 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a479804fa7e80e5c1a1251f003025a2a07fdcb04aabe60b8a41eae1ce034424d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7503091 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:578521c8be58b71cd23796817c4d0872754615454f6ac3501e83de23ec7d77b7`

```dockerfile
```

-	Layers:
	-	`sha256:cd4e7e55dc449ec79cace63ef72e65178ebbe5a544dc01e85b5db7bc30d38e60`  
		Last Modified: Fri, 02 Oct 2026 02:48:29 GMT  
		Size: 7.5 MB (7487065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28dede9e778def9dc1ee0ee55ba468fc84157195984e7825b3b0df7215b5037c`  
		Last Modified: Fri, 02 Oct 2026 02:48:29 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:9856f33bc6844cbf75e75c14742d8ffe813b8d88cfcd01057a1975646b9b87ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299469275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1a5fe4fc3060e6db2d73d08bb2bf5503dfacb5e8acf467c4efe6ff9196ed2d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1789689600'
# Sat, 26 Sep 2026 05:02:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:02:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:02:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:02:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:02:41 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:15:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:15:28 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:15:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:fe57b34d87b4c3538e7b00694a21e5bd450391029c5c22b4da16fbe872c78d51`  
		Last Modified: Sat, 19 Sep 2026 00:05:59 GMT  
		Size: 53.2 MB (53195075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672bd588ed5276723506f7ce06a15138fe6d091a5d202c2fdabae87bc5d56532`  
		Last Modified: Sat, 26 Sep 2026 05:05:55 GMT  
		Size: 158.3 MB (158282679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8af60b8692a3d6e324f61b80631868b99d269e3e82a7ce50c613ffb2b7c7d3cc`  
		Last Modified: Sat, 26 Sep 2026 05:16:09 GMT  
		Size: 88.0 MB (87990477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bcc5b7176962b5a19f8c0d1ad88ccdaa40ff4e7032df65368c79849fef9ba85`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0f5ec389f9d0283663dc934587223870038d5383a1f7453f6830d15cdc5c36`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:1212f868d3aa5aea0aaaa58850dc500f98a2f204fa1846d12174e81c0c8ceb0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7501047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7d053377808495b7a8efb95eed1f2d630da2c5e43cf15be920b9ff546da641c`

```dockerfile
```

-	Layers:
	-	`sha256:3954be21debfb1a791dfff6d4fb49744c576b73e738e89aa52116dc5a9fb210f`  
		Last Modified: Sat, 26 Sep 2026 05:16:07 GMT  
		Size: 7.5 MB (7485091 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c83fa0967bf37730f5305894156b455b2a0880ff0f7ee2caba80b81e60dd8e97`  
		Last Modified: Sat, 26 Sep 2026 05:16:06 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
