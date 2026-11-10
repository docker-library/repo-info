## `clojure:temurin-27-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:a297c9e5cff46720c6476f13aa60aa3228abe9a1c2ac23b42643092cabf6ba14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-27-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:f6867d1f453bfdf89d612833ad22ed6302360bf9f9f9538177ad60717a7e3020
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.5 MB (144484591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8e4ed466b507a43cbe5eecce3fa9f242306018f4f23c10eb6d43c58ed5d12de`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:43:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:43:21 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:43:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:43:21 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:43:21 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:43:21 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:32 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:44:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:44:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:34 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb3a5d20bb772a40b5a6deb8fc8f1499b4d55f3c15de83f70de1388ca4f9701`  
		Last Modified: Tue, 10 Nov 2026 00:44:53 GMT  
		Size: 93.6 MB (93647841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad11d4eabd1df8f19a0f121f37ee48000cdf3d4f9f20fa7b5b4827683beb9df`  
		Last Modified: Tue, 10 Nov 2026 00:44:51 GMT  
		Size: 18.1 MB (18072621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21cdf52c7cd698458a5877874781d78b03306cfc0c96728d33bd16314946d46d`  
		Last Modified: Tue, 10 Nov 2026 00:44:50 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0823d563eaca9cbda41c38afd1a0e5c4fc787d1201a787b46a7f9cb3c73ffc9`  
		Last Modified: Tue, 10 Nov 2026 00:44:50 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:dcbd6069659dd745b3b77da2dc162fea5f8c8118bd1c1a7304cb88dcfdfac836
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dba6bcb8771832e9151f148530a0b4ea3104c20450b4ae03f9b228f7f87acafd`

```dockerfile
```

-	Layers:
	-	`sha256:b4cfe4c806697cfc8cf1bdd0df2ed931fa773fd31dfadd1843136e8dec7569f4`  
		Last Modified: Tue, 10 Nov 2026 00:44:50 GMT  
		Size: 2.7 MB (2699977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05a68a83d91d93b365c715c5bfb6b660fed3c2bb730e1ea9a1b616a2887e423c`  
		Last Modified: Tue, 10 Nov 2026 00:44:50 GMT  
		Size: 17.8 KB (17766 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:93162c24f1818f1c78f4b4378c2ffb1e0b0627bea45f50841266c8ce41da374b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.2 MB (143227558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd15f325163e5bbda8d59bb1df3c031a9a3818a1f7c412a8af940cf474a4e11`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 00:42:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:42:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:42:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:42:55 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:42:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:42:55 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:44:07 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:44:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:44:07 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:44:08 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:44:08 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:44:08 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:44:08 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc60b1150bc07fba0f641d3f6072e0042bb951157b2f0dcfef7d5b84c694aca9`  
		Last Modified: Tue, 10 Nov 2026 00:44:27 GMT  
		Size: 92.7 MB (92660463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58942595bc0f2c3b831b57d3b8338fcbb037433d4c7c6b7618f264f4695c14c7`  
		Last Modified: Tue, 10 Nov 2026 00:44:25 GMT  
		Size: 17.9 MB (17906624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1da8a2a660979663bdb20370213bd4d10d197874567be19529db291fbfeb86`  
		Last Modified: Tue, 10 Nov 2026 00:44:25 GMT  
		Size: 4.5 MB (4515181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42d5f07c06eaa5d87a509a93e8c5f6c782534391b37087c0c43f2e630b83884`  
		Last Modified: Tue, 10 Nov 2026 00:44:24 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1ab0a3226fd0aca668e365073235ccf677a6d72189140f1c2859e2fa5bf3abbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2717476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a095b34130ff85a93fb29c07125e7b8218b19b63b92649c9053c85bc6f29018c`

```dockerfile
```

-	Layers:
	-	`sha256:9944b9116bf929e34f543fde4f71cd4f5b8fc803f32ae758ee0a8a4a91153987`  
		Last Modified: Tue, 10 Nov 2026 00:44:24 GMT  
		Size: 2.7 MB (2699589 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b48df4f48f8e3cce76e4dabce12148cc3a0415a608c75d4deaeee7dc4ae153eb`  
		Last Modified: Tue, 10 Nov 2026 00:44:24 GMT  
		Size: 17.9 KB (17887 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-27-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:0a4c04bdc1d906d1a1512b845b5dab00b4affb760096e8a49c0d940afd41f4e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.8 MB (146814853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cccec15e2b69d6d6a034f2f6eb34e27a8185201c65057c7b24b6cb23f4ec946`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Tue, 10 Nov 2026 02:52:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 02:52:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 02:52:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 02:52:51 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 02:52:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 02:52:52 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 02:56:42 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 02:56:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 02:56:42 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 02:56:46 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:56:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:56:46 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:56:46 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02c64fde149246e1dbcd66abe605690d715a442bae5549d2bac4eff3880950b`  
		Last Modified: Tue, 10 Nov 2026 02:57:38 GMT  
		Size: 91.9 MB (91925729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d563117eabb368ac20c0a1c86d6e308f51982d7093352552666e80ba93c35273`  
		Last Modified: Tue, 10 Nov 2026 02:57:36 GMT  
		Size: 18.3 MB (18279441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91e06a988a6d4c4207e4444b5b5818e439869fbebcebb22b59f09681ea9cb25e`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 4.5 MB (4515190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5360338cbbea9e840d89940eed49659980c85f98ce888aba6a9f12b83e121253`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-27-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:d4abaccd818e3628ce2e3a0b2389c9babfe6081c8027f4ef870893da78f2a4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2701695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55eea1c1825daba4265080da8f3227d5f10c88b9bfad1033db93095731ffa2f2`

```dockerfile
```

-	Layers:
	-	`sha256:4ff1b0de980cd9a08b20f77a6415ab2d9801c921709a94fbcef49e6272715bff`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 2.7 MB (2683885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2efd9a4eb18f0cb58b2e313305e901daf6bc2e860388ac853f66739ca66df855`  
		Last Modified: Tue, 10 Nov 2026 02:57:35 GMT  
		Size: 17.8 KB (17810 bytes)  
		MIME: application/vnd.in-toto+json
