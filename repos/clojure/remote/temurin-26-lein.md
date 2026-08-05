## `clojure:temurin-26-lein`

```console
$ docker pull clojure@sha256:f974a79192b46d49470b10544d6d106436b81fd50745db937414e24025a86933
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-26-lein` - linux; amd64

```console
$ docker pull clojure@sha256:3ff902334abe221c3941a3bb48f25bf23139339270515a0da86a0132c8e4a03d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167654686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcc5c710a607a07f5e1130d6bbf836ec2406fb20d09a120577d72948ee2412ca`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:25:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:25:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:25:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:25:27 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:25:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:25:27 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:26:31 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:26:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:26:31 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:26:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:26:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:26:32 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:26:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3af9207d37990175f61d5ce9faa0c7373ffcd2d6da1b6ba0a9ca9d61f8f47cc9`  
		Last Modified: Tue, 04 Aug 2026 23:51:34 GMT  
		Size: 48.5 MB (48497091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3f109abe1ce97a266308f02d1e99de52c117240d41c4308b85d49b95f189c0`  
		Last Modified: Wed, 05 Aug 2026 01:26:50 GMT  
		Size: 94.5 MB (94524362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbb1e6aacff8134b25e30d7b867d304f4cdf804a7a260ca1235e25ba03565bd`  
		Last Modified: Wed, 05 Aug 2026 01:26:49 GMT  
		Size: 20.1 MB (20117599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e964890a54d85ec44ece976cb60dcafebf7c2bc7808e2a8675c40f28c75d769`  
		Last Modified: Wed, 05 Aug 2026 01:26:48 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6a9140f5409f35526bfef70d9b26df6c4dcf121b3fafa9f93c1caf2853c93b`  
		Last Modified: Wed, 05 Aug 2026 01:26:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:2063764308e9cf8e6e6a4bee48dadde27609b7bfa1b9d1bd3f81f32e3b9759a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:882a1f9c683f788f7c4835344a8f70388283f7290bdf7c8a7de80c8dcf8bb75d`

```dockerfile
```

-	Layers:
	-	`sha256:170f0c4c9d056610cd95001c99406131f531a7fa0329ce9cc6d6e2bd17cc771f`  
		Last Modified: Wed, 05 Aug 2026 01:26:48 GMT  
		Size: 4.2 MB (4249595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8623dd688361053cbbcad5c3f6b6d27a4e96b627cb12fa78404f1ec4190781e1`  
		Last Modified: Wed, 05 Aug 2026 01:26:47 GMT  
		Size: 18.4 KB (18380 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:f3252fc1c8c57aa6c708bb90f60e1364f54b6e31263d99f4dfb8cce8d4a30d66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.3 MB (166343603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:007e6a5d053ffb3352be3144f607030af83b8d8c21412a3d5c7af7415e66320e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 01:31:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 01:31:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 01:31:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 01:31:31 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 01:31:31 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 01:31:31 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 01:32:40 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 01:32:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 01:32:40 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 01:32:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 01:32:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 01:32:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 01:32:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c6cbf97176c58c741329cd787e932a1e47931b35f5dc0f23db3e6e82924fef0f`  
		Last Modified: Tue, 04 Aug 2026 23:51:29 GMT  
		Size: 48.4 MB (48383380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfdc838943f8583bd221851fa6c1c0e9fe427da8c14eae8791c9ce3c9ce8b10f`  
		Last Modified: Wed, 05 Aug 2026 01:33:04 GMT  
		Size: 93.5 MB (93504351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0249d07bdd02aaeab3e1f7a85ff0dcdf9cf7492ab0c8e2426e277b3d66300ba`  
		Last Modified: Wed, 05 Aug 2026 01:33:03 GMT  
		Size: 19.9 MB (19940272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f3b56c7d110e14df1af33891931b047efb063bf51ba52e6ba0965aa31fcba1`  
		Last Modified: Wed, 05 Aug 2026 01:33:02 GMT  
		Size: 4.5 MB (4515171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5325c215defaf8c73c4cdb616e10f888f6abbc438f97fa495d2297ec6a16f20a`  
		Last Modified: Wed, 05 Aug 2026 01:33:02 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:b8641bf79a32400470d004edcc4e733a0e2bb3a914cc489898570691da9a3183
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051b7fcf3c3a4b0e9137e34749c3e25c3d17d7c10b045d29c17f1491fd5dc8cb`

```dockerfile
```

-	Layers:
	-	`sha256:68dee5106af46a8090fbcb0ceeb525d4e831e631002a8a50619608377824e499`  
		Last Modified: Wed, 05 Aug 2026 01:33:02 GMT  
		Size: 4.2 MB (4249231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79380cecc8f07186c845ac30156762fe340caa135abe182f60de5276406916c`  
		Last Modified: Wed, 05 Aug 2026 01:33:01 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:e8e0b3661d1ff830f0f67d36b3f8a6d38b09818848b18c87ca5e5656672435ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171091206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e16055d0f6ce4bd80bcad163c7a68aab1a80c2e7b522ac39a30d89b6667b894`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 03:44:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 05 Aug 2026 03:44:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 05 Aug 2026 03:44:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Aug 2026 03:44:01 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 05 Aug 2026 03:44:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 05 Aug 2026 03:44:01 GMT
WORKDIR /tmp
# Wed, 05 Aug 2026 03:46:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 05 Aug 2026 03:46:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 05 Aug 2026 03:46:45 GMT
ENV LEIN_ROOT=1
# Wed, 05 Aug 2026 03:46:49 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 05 Aug 2026 03:46:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 05 Aug 2026 03:46:49 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 05 Aug 2026 03:46:49 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:27ca77594859d744b40f6ebb10ff76b1cca743515db4e5b6fcc2fdf14c3e6710`  
		Last Modified: Tue, 04 Aug 2026 23:50:27 GMT  
		Size: 52.3 MB (52341477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88a4afed690d95682effdb883fbd3eb1aed486e270763f40a0bf7cfc2990345`  
		Last Modified: Wed, 05 Aug 2026 03:47:26 GMT  
		Size: 93.9 MB (93902057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b695ae551c63ef42df655c729f9f419046297e5313e5f864851f1ede7db1743`  
		Last Modified: Wed, 05 Aug 2026 03:47:25 GMT  
		Size: 20.3 MB (20332056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7fa95a2e842a77cc89e4d1a8bd027e550adcef69ec0f5e40ca3cb0c92709d1`  
		Last Modified: Wed, 05 Aug 2026 03:47:24 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c020099b6df55cbfd2aa384c1d9296e037e98b3355dfe50a45b530a9db17d92`  
		Last Modified: Wed, 05 Aug 2026 03:47:24 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:3e063c7c77c2733fabd9d60e7b2f895abf6e184e574cff95695c3c6db14d138f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4253841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1c6c51a231045b62c35a3266c0aee24121a27bc5a6d5389f55b6813324de6b`

```dockerfile
```

-	Layers:
	-	`sha256:b78ccbe880e93d8f7bc7f6d60bef0980b6d0dba0f0a6734d6b4887c6a74067a8`  
		Last Modified: Wed, 05 Aug 2026 03:47:24 GMT  
		Size: 4.2 MB (4235404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:324e39feeffc19c3abc60c073dbbbfcd99a14bbf457341f527d94fa928479bd9`  
		Last Modified: Wed, 05 Aug 2026 03:47:23 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; s390x

```console
$ docker pull clojure@sha256:298215bf16787138a82023c51a3b463ea580fe399db17fb883710b3ef9fac3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161979903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03558689279135e9c5d86ed1d0dc3302912380b5b04fe278c464e8e636101477`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 03:04:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 03:04:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 03:04:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 03:04:48 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 03:04:48 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 03:04:48 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 03:05:52 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 03:05:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 03:05:52 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 03:05:54 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 03:05:54 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 03:05:54 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 03:05:54 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b100b02d9fadd7ef6d3dd60d05e61617db916a5b1014ba714029c6f60cb0a65`  
		Last Modified: Tue, 04 Aug 2026 03:06:19 GMT  
		Size: 90.5 MB (90536989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2af4c28d4d321c485e3f3c309db29ae3922f2cd6ba96bccdb19f07efedfdc1`  
		Last Modified: Tue, 04 Aug 2026 03:06:18 GMT  
		Size: 19.8 MB (19769990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8bfcd494e8b4c7f6b702cfb833554620c2ed9270c7f30de0bfb3223f31adc6`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 4.5 MB (4515214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f94055cdc5de994f66079829f980803347397c1c9de2ced2444fe3c93558c3`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:2a56153ada23cd5101ac8623bb5c93ec070e276da9095a7d58a2fff7e28224b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4244976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb638605ee6eba42d3d456312301de27aad075a7835ddf9f66719ab6febe1e1b`

```dockerfile
```

-	Layers:
	-	`sha256:215855bd983c1833c6b9fd10e02bfb9447023fbc4e1dda3064367c69575166a2`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 4.2 MB (4226595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37dc07ceb73f8ac9c1fb103549cad234537441bb2968ea4cd524c332e57dc45e`  
		Last Modified: Tue, 04 Aug 2026 03:06:17 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json
