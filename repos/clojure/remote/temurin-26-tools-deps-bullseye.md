## `clojure:temurin-26-tools-deps-bullseye`

```console
$ docker pull clojure@sha256:9bf7d2028d0c239a6544066561b2d496f74b8a1498fc887edb4095099045e63b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:ce12300d4f827793de0c7e3a175998099beaa4c39dd513be9e3db08cc2b0e752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.8 MB (214820688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8100a4760c855ea85d2c7f991d47e4806de81cc7919313a2a6599983ec7ece80`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 17:58:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 17:58:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 17:58:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 17:58:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 17:58:04 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 17:58:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 17:58:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 17:58:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 17:58:16 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 17:58:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:67de115811dc004af37113c6aa85eaaeb7c71fbf7fb79c2219111439cbf76c90`  
		Last Modified: Tue, 14 Jul 2026 00:14:39 GMT  
		Size: 53.8 MB (53776576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196606c91da46b4e334f851b6f6e52667b97c84f45da4aab94c8da7b1f9c17fb`  
		Last Modified: Wed, 29 Jul 2026 17:58:37 GMT  
		Size: 94.5 MB (94524344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228ecffe3bc4306eeaa101712d522ce38ff0c258cb06c25d6a2e4452b8d52a38`  
		Last Modified: Wed, 29 Jul 2026 17:58:37 GMT  
		Size: 66.5 MB (66518727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c2d6aac0f2c549aaa68fbdadfdf6a00a302a76d34d4c303890d384bda5220e`  
		Last Modified: Wed, 29 Jul 2026 17:58:35 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b47dd6975e1de8bf5a97e4e23480e0308d459d48701de1d88a6cbe1794c12db`  
		Last Modified: Wed, 29 Jul 2026 17:58:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:10fb60a4ca5bd3f7ee96987cdb0af6c53585fbc5bae70e9d351021c31a1985c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7386265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9aac78529f0e9735eced477d83b691e4509cf4a42b39995c190fb5896705e96`

```dockerfile
```

-	Layers:
	-	`sha256:7b25c018eba0a77de20b61dc27939c4269ef4376e8f635884b640c9c8b02b7be`  
		Last Modified: Wed, 29 Jul 2026 17:58:35 GMT  
		Size: 7.4 MB (7370340 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc6015f4a2ff76c9042dcbd3077accad0207eb8b3214602130648a86dcf26709`  
		Last Modified: Wed, 29 Jul 2026 17:58:35 GMT  
		Size: 15.9 KB (15925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7e0d267a555da6d138644ce4e528011dc7fa05411cc77bd1ab4fa9628d50a0c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212451700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:070787180e4f99e8fdcd87a21af3b0b6abfedd23036183369c39281f235c1af7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Wed, 29 Jul 2026 18:06:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:06:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 29 Jul 2026 18:06:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:06:39 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Wed, 29 Jul 2026 18:06:39 GMT
WORKDIR /tmp
# Wed, 29 Jul 2026 18:06:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 29 Jul 2026 18:06:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 29 Jul 2026 18:06:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 29 Jul 2026 18:06:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 29 Jul 2026 18:06:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:05f35ed13b0f03b4d3292e29957ef64e978b7566be41843c7f2be1cede133720`  
		Last Modified: Tue, 14 Jul 2026 00:14:11 GMT  
		Size: 52.3 MB (52260890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9be6385f800453006955ee5f7dc77158da714ccbbcb512dcba31e600ecd6dd0`  
		Last Modified: Wed, 29 Jul 2026 18:07:13 GMT  
		Size: 93.5 MB (93504310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2761127cd6e037c58639a84edad92bfd185a53bab9d9e050c6f9e434e2aa1d43`  
		Last Modified: Wed, 29 Jul 2026 18:07:13 GMT  
		Size: 66.7 MB (66685457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da0a895f86f1404074850d88ef51aa2f6ca523b06158b8caea2c3979c88ffee`  
		Last Modified: Wed, 29 Jul 2026 18:07:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3394cccc4a9ed0761d415347e61293f25b9c731cee8a4894f2abef0f332671e`  
		Last Modified: Wed, 29 Jul 2026 18:07:10 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:2a496eb6266c962f5b1e7ebaca6d90fbe2daaf778c7e6da0fda526940b0c286b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7391478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8e93f0abaa488e4e57e41c7f3fccf3cf2305c8e87917a020d264eb86eb1729`

```dockerfile
```

-	Layers:
	-	`sha256:8a863ea436194076b554632421712ce63b14d16be00041f22159011a51f7ee4d`  
		Last Modified: Wed, 29 Jul 2026 18:07:11 GMT  
		Size: 7.4 MB (7375436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9f2125fa012cdfe7a9b8847aca6ab1a9ef3cfdec239ceb668d3fdad6b897a67`  
		Last Modified: Wed, 29 Jul 2026 18:07:10 GMT  
		Size: 16.0 KB (16042 bytes)  
		MIME: application/vnd.in-toto+json
