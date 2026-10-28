## `clojure:temurin-26-lein`

```console
$ docker pull clojure@sha256:0f33f8ccbf9bcfccff21f1a9809a8984592d20aecc85fc73e0f000dbaa87b2ee
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein` - linux; amd64

```console
$ docker pull clojure@sha256:d42291b2ced5f6a9214910afd018d65271e419e0259aa15a8188b21dea4506d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167736477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9b282da875c08d7350b9ace838935973e202ffa3b4b312f76e8d97896313e3f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:14:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:14:55 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:14:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:14:55 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:14:55 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:14:55 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:16:13 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:16:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:16:13 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:16:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:16:15 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:16:15 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:16:15 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a4aa977c0d0eb2336dad68941e458308ebf32a717c19ea72e475b9eda8035506`  
		Last Modified: Wed, 28 Oct 2026 00:10:13 GMT  
		Size: 48.5 MB (48524552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f0c4efa8542bac7ac83bebc44f76627d44d246e4414a1916c7cbfd86d4c278`  
		Last Modified: Wed, 28 Oct 2026 02:16:34 GMT  
		Size: 94.6 MB (94563502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd5ff455f4e770f8b273da2f7b2aea40902695db2bfba0759fd1740b9333ac9`  
		Last Modified: Wed, 28 Oct 2026 02:16:32 GMT  
		Size: 20.1 MB (20132775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9d9892dffc14ec3c90cec1e1b6d7f90bb5018afd9a275f8984a4ba771c45097`  
		Last Modified: Wed, 28 Oct 2026 02:16:32 GMT  
		Size: 4.5 MB (4515218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abdc262c6c438e1145a494a6505f10ca0ac1eee6ea76cf777c9bb11884e4f092`  
		Last Modified: Wed, 28 Oct 2026 02:16:31 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:efe8eb96f91ce1e3e8b15d8aaf88da0dffe8d946fa233bb6142891891db14ced
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22d2ac104ec41869e67fd5eecc67b36a24ba66311ab144c7a49a13001d59f2ea`

```dockerfile
```

-	Layers:
	-	`sha256:6dd714bfbfbad9c7ae4f9de3b8a7b6065722e4e659e32311f2e64f71e8e94f5d`  
		Last Modified: Wed, 28 Oct 2026 02:16:31 GMT  
		Size: 4.3 MB (4253547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9bbafc3322c2b53970a9fddc75ae854270b6973bf31737aff97330833dcf77a`  
		Last Modified: Wed, 28 Oct 2026 02:16:31 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:431b59d2fcda5515290f57f4642df3cf688b8550898c58fb6ef8ab6d077379e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166441250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65e491aac436bb93d7f5206c95cef47b0db1994213b8652b540e760c79cdbd3e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:22:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:22:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:22:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:22:07 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 02:22:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 02:22:07 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:23:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 02:23:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 02:23:25 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 02:23:27 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 02:23:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:23:27 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:23:27 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9e2782a4701b518d11b63dd3dedcfe1338e448f72cbf5353e854f2501ffd5e62`  
		Last Modified: Wed, 28 Oct 2026 00:10:21 GMT  
		Size: 48.4 MB (48405170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1e3bbd3e8b52d510bf77bb6514e45070e3b1d5e61df2cd700521e13a399934`  
		Last Modified: Wed, 28 Oct 2026 02:23:47 GMT  
		Size: 93.5 MB (93543621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2101bfd290da110fab518f0dfcf6995836317ad92234aa0bdb6b579069c369e5`  
		Last Modified: Wed, 28 Oct 2026 02:23:45 GMT  
		Size: 20.0 MB (19976810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ce98998a4c186f92bb4b6c213f4cc6a1e285ed3fb9d37ff95d84dac1bc9279c`  
		Last Modified: Wed, 28 Oct 2026 02:23:45 GMT  
		Size: 4.5 MB (4515219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca14fd449f273c3ad70f9d3f5dbc59f57f66fe1f24326b2c61952fe4455c528`  
		Last Modified: Wed, 28 Oct 2026 02:23:44 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:4e5264df1771b9487ba969a6686a3d97b0e612600c7f69799008301377737ee3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e3b1271aceb56f15228ec611b06b7ef5efc562a93e96fe129547f4983b68dbf`

```dockerfile
```

-	Layers:
	-	`sha256:b65eaf53ba95dcc33a3ab6fafa18fa921455dd98735cd8f06ebd162a29e52cc9`  
		Last Modified: Wed, 28 Oct 2026 02:23:45 GMT  
		Size: 4.3 MB (4253183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67dda4cb98695f604483a71b3312d1d2d5b329db645eb5fed28bc0048e6a1821`  
		Last Modified: Wed, 28 Oct 2026 02:23:44 GMT  
		Size: 18.5 KB (18525 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein` - linux; ppc64le

```console
$ docker pull clojure@sha256:ac90e26c9560f361713e68220433dc33e1b5edcf0bd3c662d5892656fc4a1908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170590323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d8aace981211159dab4cff1fe303b6a2d07b57aa1a948aa6212e9956718454`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 10:25:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 10:25:18 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 10:25:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 10:25:18 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 28 Oct 2026 10:25:18 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 28 Oct 2026 10:25:19 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 10:28:54 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 28 Oct 2026 10:28:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 28 Oct 2026 10:28:54 GMT
ENV LEIN_ROOT=1
# Wed, 28 Oct 2026 10:28:58 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 28 Oct 2026 10:28:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 10:28:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 10:28:58 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:76d39433e5f7ff3fe5badf80d81523262cac841a13ec65f6dee0fceb621f6b0f`  
		Last Modified: Wed, 28 Oct 2026 00:20:21 GMT  
		Size: 52.4 MB (52366307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c146e784b51752580cf19fff057fec6b36fbceaf3c0b837bbb26eeba03fb80c`  
		Last Modified: Wed, 28 Oct 2026 10:29:38 GMT  
		Size: 93.4 MB (93350858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2a2752e0c3f5879fedb640be78ef7f27debb24e7cddcaffa91ac2f349a5544`  
		Last Modified: Wed, 28 Oct 2026 10:29:38 GMT  
		Size: 20.4 MB (20357510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72976ca704cfd58eea837a22c0a228b1f1f9ce1b0a9cfc32d683f38b3373fd96`  
		Last Modified: Wed, 28 Oct 2026 10:29:38 GMT  
		Size: 4.5 MB (4515216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503f5c2d45a717ba3b00be5490774e03577241d56fc9eb7ff3047aa551850553`  
		Last Modified: Wed, 28 Oct 2026 10:29:37 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein` - unknown; unknown

```console
$ docker pull clojure@sha256:28a2a6c6fd1fa7437de3b1602732d3b2e741bb2f109e74273a93ff34d92faf6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4257793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ecf5fb85c94a54e695c8cb4d09a87f9988f5063377e54f0e2d9646dfc7b9aba`

```dockerfile
```

-	Layers:
	-	`sha256:2cc182b5862672ccd1286effbfd7e6fcc6a7854229d95c59cfd88127e2156643`  
		Last Modified: Wed, 28 Oct 2026 10:29:38 GMT  
		Size: 4.2 MB (4239356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:469fcd3305f54e0a09106fa8a8390bec97fc42981771998939beaff61d0e1756`  
		Last Modified: Wed, 28 Oct 2026 10:29:37 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
