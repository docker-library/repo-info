## `clojure:temurin-26-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:b1451cf5a0c385090a361aeddc79d72d554ed00eb5d8ddbce5d839f2a7efbd24
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9f7bbdc85b10721b912920a3c643403ea7cc18a0bc69b2899fe94d984d511501
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167733716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2431eac5e9599c7e2a83573882f48c973ab301eb3a0c3f63e100338fd2a96bf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:20:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:20:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:20:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:20:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:20:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:20:58 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:22:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:22:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:22:04 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:22:06 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:22:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:22:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:22:06 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1603c88175a09a9270899477d055d1ebfc78ce33675361526c517c1e3a9ed9f0`  
		Last Modified: Wed, 21 Oct 2026 01:22:25 GMT  
		Size: 94.6 MB (94563521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c19440ab075c7db0fb92b5f6d4b516e6f3e9752f68a02ce14df79efff77085f`  
		Last Modified: Wed, 21 Oct 2026 01:22:23 GMT  
		Size: 20.1 MB (20132501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad20bc5d9ef056be9bbdccdf266719fa099571699693b95db11672f4d11385b`  
		Last Modified: Wed, 21 Oct 2026 01:22:23 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719c6ff8d3e2328fca9987d5ed22d0ce994942224603cb5b3bc8c05ea2534071`  
		Last Modified: Wed, 21 Oct 2026 01:22:22 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8151d8345d7fa0f11d34f9494195b50d8348745ea3b112086830370c081529f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cd320dbe695fbaa4f927afec626652f4043cdf8ae7fb792281581d1df221ec7`

```dockerfile
```

-	Layers:
	-	`sha256:b4f7df1da02921e9c404ed7adb34571bdc1e0ee268462644f7ec5e20c65653ce`  
		Last Modified: Wed, 21 Oct 2026 01:22:22 GMT  
		Size: 4.3 MB (4253547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fe520d994fa91cde1467b60c24774eaa0917f05deee157f1eb5f9343e8dac66`  
		Last Modified: Wed, 21 Oct 2026 01:22:22 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1f33e433e980d22c901987799d7a76326ea46a7ed51f4bac3fc669421804912
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166428442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76426cbefab3798a88dad3b459524578951b4b7d58f21f699fbb97fb12101a73`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 01:27:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 01:27:06 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 01:27:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 01:27:06 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 01:27:06 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 01:27:06 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 01:28:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 01:28:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 01:28:13 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 01:28:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 01:28:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 01:28:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 01:28:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3ecd9776331671758662f1c5d4cb1f2551a1b9911a04d9e99dd2c6bc4bc1cb`  
		Last Modified: Wed, 21 Oct 2026 01:28:35 GMT  
		Size: 93.5 MB (93543590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffecd73dcd25212634a58bb8571ceeed9b431d09a28c84f0598056734b2caf16`  
		Last Modified: Wed, 21 Oct 2026 01:28:33 GMT  
		Size: 20.0 MB (19966094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542ea85202448e8a43d25af7e0975be3f6dd5c45f88586510fffe10df99517f7`  
		Last Modified: Wed, 21 Oct 2026 01:28:33 GMT  
		Size: 4.5 MB (4515217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0c1fb643f3f06b18b5dea69d6e13739a31cd577219697cb67db3cb6ed3e67cd`  
		Last Modified: Wed, 21 Oct 2026 01:28:32 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:88012e03943d6bfc536d7d556efbe587978569f4b1af0c5678a5a9c3fc1c7699
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ea2d0eacf4a0af121935511748c94d1095f9ce53347f8882a6c8a01fb25e8b1`

```dockerfile
```

-	Layers:
	-	`sha256:9ebc6ebc77c69d232dfa59e41f9711671aedd7d31a8e2e20ea40783ebcb2850c`  
		Last Modified: Wed, 21 Oct 2026 01:28:32 GMT  
		Size: 4.3 MB (4253183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c604b2809acfefbd8b61c62ccb068532932917e77f3ece36da34a5659626d6`  
		Last Modified: Wed, 21 Oct 2026 01:28:32 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:60ab7b78fb7c6c18e8e17a5806d127af8cf8081fd355ed74c0591fba6539742b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170587804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b3af0797286da2278fb40965a75e8a0b61eb1cd9bca6602b0b2a380f319fd83`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 11:01:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 11:01:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 11:01:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 11:01:20 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 21 Oct 2026 11:01:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 21 Oct 2026 11:01:21 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 11:05:11 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 21 Oct 2026 11:05:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 21 Oct 2026 11:05:11 GMT
ENV LEIN_ROOT=1
# Wed, 21 Oct 2026 11:05:16 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 21 Oct 2026 11:05:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 11:05:17 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 11:05:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:0d8f63583ffe9dea650eb3c2d930ac17764dc3edd73dcc6becb0a476d51e6619`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 52.4 MB (52364741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cf4557b0dd8e520302a63b87bfc1c5ff2dd29442ad047383a634b6ae3b42e3`  
		Last Modified: Wed, 21 Oct 2026 11:05:54 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1c2e0e4bf0a3bdc46c00d594e76d9dbd16f5ddcff71ee57c759a51eb1f70f3`  
		Last Modified: Wed, 21 Oct 2026 11:05:53 GMT  
		Size: 20.4 MB (20356576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39dc0ca9cc2e6bf3c88311dc997f6b69f280f6a4753205fc6642b5728d4b27b`  
		Last Modified: Wed, 21 Oct 2026 11:05:52 GMT  
		Size: 4.5 MB (4515198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09389c5e56ddead9ba0f4a31b3f168b3e55c1a6544ca25b73967eae734255a40`  
		Last Modified: Wed, 21 Oct 2026 11:05:52 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:064194017dbac307d048d1d51f91fb401327140271bf75e420c03c91d01a359b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4257792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0442223f719d4cd29e7ba54521d0298b1ae45e0f4a568ca093ef234d829b8afb`

```dockerfile
```

-	Layers:
	-	`sha256:4d1c67539dbde2ee32550639a472207d4f9347086aedfe7d8fe9244a59e942ef`  
		Last Modified: Wed, 21 Oct 2026 11:05:52 GMT  
		Size: 4.2 MB (4239356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1fff6cefb867dbd473e6e7969276f96820b038841cd34f8f84a25a8a1de8f4b`  
		Last Modified: Wed, 21 Oct 2026 11:05:51 GMT  
		Size: 18.4 KB (18436 bytes)  
		MIME: application/vnd.in-toto+json
