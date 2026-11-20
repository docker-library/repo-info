## `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm`

```console
$ docker pull clojure@sha256:f9a41ef2aa3630eaa0f02090a3dbc358d0a7eebcd07a791dc86583524854bbda
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a69f5ca30a00379c1df4884c7ecee099911051b56c253e18ec17cf13cc71142d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272615332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b23611f9df1648c5c944f8b58162e48d5fcdbc11461ee199831df5b96d270f2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:07:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:07:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:07:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:07:36 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:07:36 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:07:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:07:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:07:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:07:49 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:07:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:404d02135add3690fdf793327fc96f0bed23df904f3c1ba6a000cee282023a4d`  
		Last Modified: Thu, 19 Nov 2026 22:08:09 GMT  
		Size: 146.1 MB (146086154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398748edb2ac843b2f35b09612ec0f84d821225f52b6f94a8c363558fe80e5db`  
		Last Modified: Thu, 19 Nov 2026 22:08:08 GMT  
		Size: 78.0 MB (78001147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1716d00fdd5ebdd1ba4dfd7b64ea8274c126b4291c2c00582e78de1d4c092b49`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffc668710b9dcfa1c7cf26f32ebeb1c394ce21d492dffbc8394c2e8e05aab4c`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:650927cf85333817c01f96d9c844d27a948000753c625efd811377ec43255ab9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7394567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0fe3f09037e8de6a8c773c7e98664fe311e8b67b0bbaaf82219a58e58f68d93`

```dockerfile
```

-	Layers:
	-	`sha256:56f652d2106c50b503c825a92d44fd43ca4368665aa1ed677988a034b8154c59`  
		Last Modified: Thu, 19 Nov 2026 22:08:06 GMT  
		Size: 7.4 MB (7378635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2b3d2395db5f6f16d98efe4c34decf5f7444c9addcf548edf55e7bb7c117779`  
		Last Modified: Thu, 19 Nov 2026 22:08:05 GMT  
		Size: 15.9 KB (15932 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d73489ac4de199284629917a215045d6f84d8f2c0bd03c91082025d17e05d968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.4 MB (271368729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8124216f292aa0d1bf7929a0165f1f2fcf1f639fcabfcaaae1cf1de49f712ffd`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 22:06:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 19 Nov 2026 22:06:38 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 19 Nov 2026 22:06:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 19 Nov 2026 22:06:38 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Thu, 19 Nov 2026 22:06:38 GMT
WORKDIR /tmp
# Thu, 19 Nov 2026 22:06:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 19 Nov 2026 22:06:53 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 19 Nov 2026 22:06:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df3159c45e6dba7aee1d9cea8136b6de29db98d1e8f8988c043546d4e279266`  
		Last Modified: Thu, 19 Nov 2026 22:07:18 GMT  
		Size: 145.0 MB (144957172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6501078f3795bc9b0d41b71370634356e980587d61b46881c05f00dbe690778d`  
		Last Modified: Thu, 19 Nov 2026 22:07:16 GMT  
		Size: 78.0 MB (77997556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230f36ab789981ebc562c3bb915e6d8f2772353f163db0f766f159f258f9a308`  
		Last Modified: Thu, 19 Nov 2026 22:07:12 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0ff2164c4cc06cab373fe53e253279d069deacda0bdf6ba41750181558973c`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:4b015f70dddcc723eafa04a2e1d458c3c94b1f5a860947cdff3d25dbed16b6c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bdc8c1b5bc0a7aaaac167bbe966544a63173d7a4fa38e413f76f7cdc74c7dd5`

```dockerfile
```

-	Layers:
	-	`sha256:ff35c0cbda4c5a28b592b8cfd91815a17edb1f1e159ce458ddd42c8f7baf4b37`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 7.4 MB (7384398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4db19572f776f073b3cb72d6f4a35c6474ccd7fd142d067d6cb51395ffaa71ce`  
		Last Modified: Thu, 19 Nov 2026 22:07:13 GMT  
		Size: 16.0 KB (16049 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c760057e6b8eadc04644342c3451605bf4413d9c85d63ce4089e1bc3adf5e63f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281053960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8d29d1678474fba54b5bef7caaa7dd88b4e640b0bc3aefe1ae60ab54b384f40`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 01:37:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 01:37:44 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 01:37:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 01:37:44 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 01:37:46 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 01:38:29 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 01:38:30 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 01:38:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 01:38:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 01:38:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:577ea0f495b1c08596c04e3c742840a05b82c8837bcd075477d91d307a4005a0`  
		Last Modified: Fri, 20 Nov 2026 01:39:22 GMT  
		Size: 144.9 MB (144859666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb36e4fb079db5f8b520c60544857fa9317587f2a78e5cbcdaab132c08a641c`  
		Last Modified: Fri, 20 Nov 2026 01:39:24 GMT  
		Size: 83.8 MB (83824130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f27ef1e96835762e65ce31db2fbdfa14d03831d9cacec3372396825965ef4f79`  
		Last Modified: Fri, 20 Nov 2026 01:39:20 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72546e5f6bb1d64529097feb468b5cde59fd6ca93738b6d6cac4e9fbcfd2c16`  
		Last Modified: Fri, 20 Nov 2026 01:39:20 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.7.1681-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:32bad1e2aed84feb835fb14fe8ff729df19b1bf35669112448c3fc2a1d781a93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e8d2807eceb70dc531aea6c31ed65be729153978016988104933981755b312`

```dockerfile
```

-	Layers:
	-	`sha256:c5f898546b478f383451b76c21a16899b767fb673d7df2b363234590d905702a`  
		Last Modified: Fri, 20 Nov 2026 01:39:20 GMT  
		Size: 7.4 MB (7382601 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d74e99b7aac1a8046b70190b493306cf4d0939bae684deecb01861e2b78e732e`  
		Last Modified: Fri, 20 Nov 2026 01:39:20 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
