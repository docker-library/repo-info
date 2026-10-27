## `clojure:temurin-26-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:cf76402b2b0b836f92903dc268215a4534034c06bd9d1d63dec7b4fed64fbb7e
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
$ docker pull clojure@sha256:555f6b6c4f689ac7ee8e95b375547781dc6d41084bea5d88a6ff6c7a647fc4b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167734151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa23396f1d2f211e999c6c9b0282b0a2f225b3fa6871394de8f9d2ecdc8dae2b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:52:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:09 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:52:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:52:09 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:53:21 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:53:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:53:21 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:53:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:53:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:53:23 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:53:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8a051559ff62acdfa1af9916c3c67673d946bb71f81cb8f30c565fa647cb6a77`  
		Last Modified: Tue, 20 Oct 2026 23:30:05 GMT  
		Size: 48.5 MB (48522084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03873a3bdd74829f11ceede419e8f09c9fad03699be4144469ab68acaadb4e70`  
		Last Modified: Tue, 27 Oct 2026 00:53:43 GMT  
		Size: 94.6 MB (94563505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70123da1cf702fd8d936dd93c9033787085ff91609b1c363aed7b823b4e58aae`  
		Last Modified: Tue, 27 Oct 2026 00:53:41 GMT  
		Size: 20.1 MB (20132923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc48e3b96ba049de10bbe23f1497b29e7b599c71d9b7c89a0017e3daf18a6380`  
		Last Modified: Tue, 27 Oct 2026 00:53:41 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29de4431c91a58388bfa879bf629caf713db912853aa2f99fb151e8efbdfbc08`  
		Last Modified: Tue, 27 Oct 2026 00:53:41 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:8cb42b08f7443ef2e9efa036df01f5a203603d93bf86bcc7af6bdc155849c6bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:992362f4a5db18ad616b94cc665b05ddb42300e49915a975abda74cb98aece91`

```dockerfile
```

-	Layers:
	-	`sha256:4f050fdb34cf2a31796286533045f0ddbd2808608bb186e259311ac143b30576`  
		Last Modified: Tue, 27 Oct 2026 00:53:41 GMT  
		Size: 4.3 MB (4253547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a341ca38df81a53cb176026c2062af3a0eaddfd4b6a59f2be7aafbdff5cd16c5`  
		Last Modified: Tue, 27 Oct 2026 00:53:40 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:a1c373acc1628870258d645233a53284b0fb6b86a86c4f86fd5bf0ae5514ed4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166439109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:602be4b2bd22eefd968d3fa5b579bb6a2e7087eadfb4fe96db758ec730eac0e5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1792531975'
# Tue, 27 Oct 2026 00:52:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:52:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:52:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:52:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 27 Oct 2026 00:52:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 27 Oct 2026 00:52:13 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:53:28 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 27 Oct 2026 00:53:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 27 Oct 2026 00:53:28 GMT
ENV LEIN_ROOT=1
# Tue, 27 Oct 2026 00:53:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 27 Oct 2026 00:53:30 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:53:30 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:53:30 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a97cb698362f4b23d085b953f3106766a2137816fe5e17a99fdc3e48bd37e810`  
		Last Modified: Tue, 20 Oct 2026 23:29:54 GMT  
		Size: 48.4 MB (48403111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda7ecd418f67c5860ae3cb1cc5508efe49db8a1e2017644356245c59e54024d`  
		Last Modified: Tue, 27 Oct 2026 00:53:50 GMT  
		Size: 93.5 MB (93543608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d198042bb0fafa87393da9e60cade22d104fe7ab5993b5e989ff1ce22017e7`  
		Last Modified: Tue, 27 Oct 2026 00:53:48 GMT  
		Size: 20.0 MB (19976750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ceecc5057c5dacbe4fe650f68daa9bd90642c233f16b973abfff3c8b708c43`  
		Last Modified: Tue, 27 Oct 2026 00:53:47 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148cfba3fc03f81ac0021daa689e18ada068516a83e3ecfdd347ba6bd860b7dd`  
		Last Modified: Tue, 27 Oct 2026 00:53:47 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1fdbc0dda99cf9b6db7a48361972a9c4a92d906ab6dec0ef7fe16f621e1ff61a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4271709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac839a87f2d4220c4592419e95aac47b91b745f036a49b8a7915c37e5660cac0`

```dockerfile
```

-	Layers:
	-	`sha256:9a94919c7116b11a7168fc044e9d7955b530c2a5799acaea29d87205fb8acc7a`  
		Last Modified: Tue, 27 Oct 2026 00:53:48 GMT  
		Size: 4.3 MB (4253183 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5afe65ea70ab52a6903b8aa26d4e7a3739783f94b656b51cb35d078cb7ba6425`  
		Last Modified: Tue, 27 Oct 2026 00:53:47 GMT  
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
