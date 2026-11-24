## `clojure:tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:3ef7507fb0324723f150c2f27e93cfec798c219e673e485e711b1c67a4d8670e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:c24f8d3b9fb9755dd244d0c2a2f1ca2983c0d32faed40f37c2a3c5db9370b84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.4 MB (191447370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb1e302600f1b385a7b0083d163c391b653c6fd041e60f41dd8dd84879ce157e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 05:13:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 05:13:16 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 05:13:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 05:13:16 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:13:16 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:13:30 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:13:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:13:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:13:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:13:30 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4dd28e4bb8b11c1f5ce288f7367fbc0777db0aa2e12c270526dd70d66ab3486`  
		Last Modified: Tue, 24 Nov 2026 05:13:49 GMT  
		Size: 92.6 MB (92613957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4926d60396077635f69096665077e3fd982eefb3092f56b826587de321901c54`  
		Last Modified: Tue, 24 Nov 2026 05:13:49 GMT  
		Size: 69.0 MB (68989693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a0da6a9d54a2f216f74c26d89d0e541e91ed81c32e4c8ff7832adcf9a6def`  
		Last Modified: Tue, 24 Nov 2026 05:13:46 GMT  
		Size: 609.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ce98c1b46aa9d21a7b0a9548c3059df65e14f77574fdbf3597707963a84c0f`  
		Last Modified: Tue, 24 Nov 2026 05:13:46 GMT  
		Size: 897.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:330e7d8674cc33129e7fbd282fa17d59840fc0c6eab0a5b401ff704f09e77b4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5246844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3d593da4d441f8bd8a552c167dee8a667b986ef3f3fa3d661b7f569724396bb`

```dockerfile
```

-	Layers:
	-	`sha256:3485b5cc8907f4a47f9966f7f1f721605a33bdac095a6cf297169456c98e3556`  
		Last Modified: Tue, 24 Nov 2026 05:13:46 GMT  
		Size: 5.2 MB (5230197 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e004bce1547e3069a6f30c1e89053766a3242e9cee15fbae88a9a83bdd6cefab`  
		Last Modified: Tue, 24 Nov 2026 05:13:46 GMT  
		Size: 16.6 KB (16647 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a64f399cee518ee202c5441e2797cd06fcd14cc08f78af41cc12b21e8e089298
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.6 MB (190561226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8ca864f9fa020aaf6704d24203ac6d82ab660a78ab8c8020960a25d9ae931af`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:45:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 24 Nov 2026 04:45:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 24 Nov 2026 04:45:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 24 Nov 2026 04:45:07 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Tue, 24 Nov 2026 05:19:09 GMT
WORKDIR /tmp
# Tue, 24 Nov 2026 05:19:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 24 Nov 2026 05:19:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 24 Nov 2026 05:19:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 24 Nov 2026 05:19:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 24 Nov 2026 05:19:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c85749b8a9ecdcd024cc6d1a6036ef73949a1e8eb2249c66d445c30364e239d9`  
		Last Modified: Tue, 24 Nov 2026 04:46:08 GMT  
		Size: 91.6 MB (91553945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e2fd16da7e0449fa10e79bc83fa7e90ed7949807ebf676476f7324fec8fa6e`  
		Last Modified: Tue, 24 Nov 2026 05:19:43 GMT  
		Size: 68.8 MB (68807710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59014e9703db3d79cc0abd132921025f96ee2368500874bfbeb466237362e989`  
		Last Modified: Tue, 24 Nov 2026 05:19:41 GMT  
		Size: 610.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b143cf7160dad38b9ee0680aa8155a167d8b5e88bb7ddb2b77ea90f820ed5bad`  
		Last Modified: Tue, 24 Nov 2026 05:19:41 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:7861299081c968e04088ba3290085ae8aece1dc73a4731fbb8a1a115bc366786
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3200b74ce6f289ecd03ed9fc3c138e33bc17c838fcd4f56079365098dee62e3`

```dockerfile
```

-	Layers:
	-	`sha256:13d8cb18dd5925b1dd7899f4f46d58f86cf3db6ccfdded46aeac50ec63c542e2`  
		Last Modified: Tue, 24 Nov 2026 05:19:41 GMT  
		Size: 5.2 MB (5235979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c9a2813e7b81d254e1449c9a1a49d7ffa662e1fcb67aec3e8059515910f630a`  
		Last Modified: Tue, 24 Nov 2026 05:19:41 GMT  
		Size: 16.8 KB (16789 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:bb113c51a7d5dce298add507c7c7348af782a065f4bff807e18582f52eb1e655
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.2 MB (198199957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6459d13c95a52b2563fecd37584f314bbfd92149af41d9f550570867dd1758bb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Fri, 20 Nov 2026 19:51:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:51:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:51:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:51:04 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:51:06 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:55:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:55:56 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:55:57 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:55:57 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:55:57 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a69284f7eb071fdfb4711ceca0eb2d57c4404d3dea9963ba6a60f092a2d00b9`  
		Last Modified: Fri, 20 Nov 2026 19:54:54 GMT  
		Size: 90.1 MB (90119618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee30aa2d433fde08d4b36a13302cc0b6d72af0341afd2cb5427182de20aac4e9`  
		Last Modified: Fri, 20 Nov 2026 19:56:38 GMT  
		Size: 74.4 MB (74411146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5489f9183997a5aca11c1d0d31e7046061780303033b211a27d278638386193b`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5911dbda0978961140b85c64e0e074d537a29c1fa5b8c80d66da3510255a734`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:728ff25f8c6ba1424b383900d0fe808aa3b5520f1b35a14d40770dc96ddfb128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4371b7784752f40b048f4fdf436d8f657da55048b645c9064bf5564092d5cf25`

```dockerfile
```

-	Layers:
	-	`sha256:29c0913df97be60ccded3d23170958da002279ec44ef7857e8764ff5f33fed96`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 5.2 MB (5215985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e7e773dfa927040836ec6ce692827abe1a3ed2e8d6ca80a1226b3978c19fc6c9`  
		Last Modified: Fri, 20 Nov 2026 19:56:36 GMT  
		Size: 16.7 KB (16707 bytes)  
		MIME: application/vnd.in-toto+json
