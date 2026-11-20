## `clojure:temurin-17-bookworm`

```console
$ docker pull clojure@sha256:b81d2fb216e659b6d5c0400c8d3c21badad3cecce500b4c7f1436b0ad082b79b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-bookworm` - linux; amd64

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

### `clojure:temurin-17-bookworm` - unknown; unknown

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

### `clojure:temurin-17-bookworm` - linux; arm64 variant v8

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

### `clojure:temurin-17-bookworm` - unknown; unknown

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

### `clojure:temurin-17-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:55dfd67a83ee8cf12550cbec000560a4b4ee07cd1f3190af35d8f8814745a55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.1 MB (281054046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99258703074a78fd10aa6faf3a52b850b9fe110fa2e781b2efd3a0b7d0b8aeb1`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 12 Nov 2026 08:02:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 12 Nov 2026 08:02:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 12 Nov 2026 08:02:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 08:02:14 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Thu, 12 Nov 2026 08:02:14 GMT
WORKDIR /tmp
# Thu, 12 Nov 2026 08:20:10 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 12 Nov 2026 08:20:11 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 12 Nov 2026 08:20:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 12 Nov 2026 08:20:11 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 12 Nov 2026 08:20:11 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8154dc284622fb4f6b2910a339d4e429599729583b608bae1fdc5b72270941fc`  
		Last Modified: Thu, 12 Nov 2026 08:07:17 GMT  
		Size: 144.9 MB (144859676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206beac6190f6378fdb97fdc1b4512af0df8ff6b1885005334df3aacca7e8d62`  
		Last Modified: Thu, 12 Nov 2026 08:21:17 GMT  
		Size: 83.8 MB (83824211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d051ee1cf951610743004aa508971b42940a2223044b76df58df4a5b3fa3b902`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9302f9e176fc4fad0d2b34cba5c6666ee908f5d1030c0a69d91b00e24d5f18`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 896.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:339cd864448eb8e1944dc7a63d433806c06a7ba76bce5ea75b6556387c6aaba4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7398579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f1757af777b150392a412d48647661a95b9d36f1ad249c0e05f3b71ed56f09`

```dockerfile
```

-	Layers:
	-	`sha256:7caae4c97b6f0d267f9555e512a8777686af7bc8c051f97e8c056491b4059d36`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 7.4 MB (7382599 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:531b91ae379811cdf1211acc881a07e46c9e716d502f5e3d7170dc6c1f316a27`  
		Last Modified: Thu, 12 Nov 2026 08:21:15 GMT  
		Size: 16.0 KB (15980 bytes)  
		MIME: application/vnd.in-toto+json
