## `clojure:temurin-25-lein`

```console
$ docker pull clojure@sha256:ece21a5b279d4be1686f18d51b75b2104a81d1dfeb83b9d474d6ef07b022b948
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein` - linux; amd64

```console
$ docker pull clojure@sha256:63d0f820b083975133f2c46a51d981a459f96e377d297192051e22865f9e4350
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165789516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb61b7b6d3ef96eb91df4eb801d98316f6480bca3757e5044f64b0dd851cd5d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:50:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:28 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:50:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:50:28 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:51:46 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:51:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:51:46 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:51:48 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:51:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:51:48 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:51:48 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ca1db0f9ed0d6180ca2d429b3b4a1ecd5264ba6ea6d18a805ee19974f028e0`  
		Last Modified: Fri, 20 Nov 2026 17:52:06 GMT  
		Size: 92.6 MB (92613958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab831ce8670fa30b5e21c372f76bd3f0872e41a321a4a15222b188c236030895`  
		Last Modified: Fri, 20 Nov 2026 17:52:05 GMT  
		Size: 20.1 MB (20132932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d06a9896d7f366f1c2cf8efcfcc34e5806193ddf6b591b6af494c7d1cf01d5`  
		Last Modified: Fri, 20 Nov 2026 17:52:04 GMT  
		Size: 4.5 MB (4515211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7780dfecafa2cd879290b83b34d9dc435b7ff5e2eac18f180427a642a71e7b1`  
		Last Modified: Fri, 20 Nov 2026 17:52:04 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:71275456f4d9962693019230316cc4d58fca63d68ee7f6e6ec6d7fa3220539da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86fa3efda169d2b8efd72451fd067b05d1cef51acd2f8a661e94e1babc6b76bf`

```dockerfile
```

-	Layers:
	-	`sha256:a1d5fdb433cc9babaa12ce4e78da2d0b77fe9190eab766ee99108b9f714c6201`  
		Last Modified: Fri, 20 Nov 2026 17:52:04 GMT  
		Size: 4.3 MB (4257298 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da451a74accebba9e8f788b65af920bdd8d571f9cafc1bf57cc7e3840720e6a9`  
		Last Modified: Fri, 20 Nov 2026 17:52:04 GMT  
		Size: 19.6 KB (19629 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:19e50433fe77fdd5038d60222fc4f53aaf372ac1d008b41a5b0ad3e9e7a7c7af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.5 MB (164459215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85d0cb6db85917cd2cfbd6282f990f2aa1ef44fe734112e9a0335dbe47d9df98`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:45:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:45:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:45:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:45:51 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 17:45:51 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 17:45:51 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:47:12 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 17:47:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 17:47:12 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 17:47:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 17:47:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:47:14 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:47:14 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee6c5a042e956354dc0f8cf39472f57b61c5018777f1cef4388bd943e9f8f1a`  
		Last Modified: Fri, 20 Nov 2026 17:47:33 GMT  
		Size: 91.6 MB (91554010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fddceafda441ec4e037f2368a4b45dad06104aa2a6198688bba897fb2379bca9`  
		Last Modified: Fri, 20 Nov 2026 17:47:32 GMT  
		Size: 20.0 MB (19976603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73a0e2253de690c2120bd2eeff7f406e252f0d3ab2a2bfe728862608344629a7`  
		Last Modified: Fri, 20 Nov 2026 17:47:31 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d2af4034af13ac9aa7f53f4d7500b8fdbf9fce83849eba755d4460148b2d29`  
		Last Modified: Fri, 20 Nov 2026 17:47:31 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:42f8877abf38fbd0374b8b0f4a8fdb3575085c891b52a376b031f3f292a23ab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4276804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78bea2b75755ec970d7a8c4525d03cfb961dde52b089a4f6e6c480df64cd33a9`

```dockerfile
```

-	Layers:
	-	`sha256:a749a9eac83d78c532d2768e2ff8f86c7f50717bd6be0d3183b8929572e90d94`  
		Last Modified: Fri, 20 Nov 2026 17:47:31 GMT  
		Size: 4.3 MB (4256982 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44b604ae68a78242b418c123d235ffb578d751e6467b5f45aa1c08ec565a5d5e`  
		Last Modified: Fri, 20 Nov 2026 17:47:31 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:5fabaf6a03d2891d3344cc370d9a9e29ad05fb8a318d81296bc4d314a6d041f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167361119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a4f19e342d95ba0727ec34ad612f423662d83f40da4fd55ef108c0197363d2`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:03 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 20 Nov 2026 19:10:03 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:13:18 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 20 Nov 2026 19:13:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 20 Nov 2026 19:13:18 GMT
ENV LEIN_ROOT=1
# Fri, 20 Nov 2026 19:13:22 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 20 Nov 2026 19:46:50 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:46:50 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:46:50 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2539b6b2dd6d3dc6544d4f155eddc3332014a5921fdd1a505ffcfc835be10`  
		Last Modified: Fri, 20 Nov 2026 19:15:01 GMT  
		Size: 90.1 MB (90119588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c921e73d42ffaa07cdf971f72726deed5f3f1da4ecb345fc8b0e6647a954135e`  
		Last Modified: Fri, 20 Nov 2026 19:14:58 GMT  
		Size: 20.4 MB (20356777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28bd912207f8e68ac1947468887308e9a166b1e5191437002a539d870fa7754`  
		Last Modified: Fri, 20 Nov 2026 19:14:57 GMT  
		Size: 4.5 MB (4515202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e8b3e33a15953595dbb0d43aa1aec5e1ecc643e6cc603eb0e3d5cdd8989d7b`  
		Last Modified: Fri, 20 Nov 2026 19:47:12 GMT  
		Size: 900.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:1ed57af949c4624fa48cbd957c775242cc0d3e7f6992f9a793fe1a579c90d905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4260354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2528315127f909eedd0e942c1836435217afe0c645f081afaded7f23b33b98a`

```dockerfile
```

-	Layers:
	-	`sha256:0435329515e98c975cd3cb85df75375b58664c1c2a25fdaff03a42a48cf90b2a`  
		Last Modified: Fri, 20 Nov 2026 19:47:12 GMT  
		Size: 4.2 MB (4240646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1d0410910ff6c5315f22602a57ba775d39aaa545e3fd0a00bbf90b4cf1b10c8`  
		Last Modified: Fri, 20 Nov 2026 19:47:11 GMT  
		Size: 19.7 KB (19708 bytes)  
		MIME: application/vnd.in-toto+json
