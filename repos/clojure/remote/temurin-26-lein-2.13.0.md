## `clojure:temurin-26-lein-2.13.0`

```console
$ docker pull clojure@sha256:def9f065ab4f65c77d676a0f71de20e637a55f471d1b160919f0b996ed471762
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

### `clojure:temurin-26-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:dd5cbb7bf96ad00afdaaa9914b57e0f6bfea145e1bc729a6bb247360da438227
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.6 MB (167645846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:134334be368b04219e6c27e761bee2ae23acc8da51b115d9baf82f9e41ff60d6`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:36:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:36:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:36:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:36:02 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:36:02 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:36:02 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:37:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:37:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:37:10 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:37:12 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:37:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:37:12 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:37:12 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c4013e1e38341061b49f51c4b44f2e534c25135d7ed5b75af8b2094766bb5519`  
		Last Modified: Tue, 14 Jul 2026 00:14:05 GMT  
		Size: 48.5 MB (48497403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eed936fd41bc6a5da87119a9e9f8168ec06ed64dcf9a871d7aa72fb8fc021a2`  
		Last Modified: Thu, 16 Jul 2026 01:37:31 GMT  
		Size: 94.5 MB (94524333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:509c7de1541c000a2a12aa2bd3f5e68d314812424aa25da50c944f9da1f45a90`  
		Last Modified: Thu, 16 Jul 2026 01:37:29 GMT  
		Size: 20.1 MB (20108514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d10a5947a57eba61baad78eb7b45e6572ba583d296d0240440151612789b251f`  
		Last Modified: Thu, 16 Jul 2026 01:37:28 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e3ca137ff538296ca4ff79cdd7a9ab6c989326ceecea1873c6240e9a24776da`  
		Last Modified: Thu, 16 Jul 2026 01:37:28 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:a024aa3354e921bc044e102d2c9cd4e93bef42a8d1092f79ee4f017464d893ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6096391333b6f087f3980ac0807aa2359a314e1bc2da810fcbe95746bafbf247`

```dockerfile
```

-	Layers:
	-	`sha256:b1a2af6fc97053e800fb59ed9172661ad801568130ea73f35d031f8f376b3522`  
		Last Modified: Thu, 16 Jul 2026 01:37:28 GMT  
		Size: 4.2 MB (4249595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3f8a090392ac3f75876c27eedc7b00e8cca855c8eca2f4103f033e7d1b69036`  
		Last Modified: Thu, 16 Jul 2026 01:37:28 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:de9251639986669a17f293e70301702bdb54cdb87dd1667e2d96aa9167fa7057
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166354571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1be74fa5d1577309106493c710462dc47080782b4065c79257d5235025aad8b7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:31:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:31:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:31:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:31:54 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:31:54 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:31:54 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:33:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:33:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:33:03 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:33:04 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:33:04 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:33:04 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:33:04 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:445be8da0a7289e4b5d70a5c779ad63d484e76aa14fe2ad45893da9eb077e4e8`  
		Last Modified: Tue, 14 Jul 2026 00:13:50 GMT  
		Size: 48.4 MB (48383689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58a31a29062e51f11cfa0b87400c5fa433d933e9bd4227289cad3facb7acf02d`  
		Last Modified: Thu, 16 Jul 2026 01:33:24 GMT  
		Size: 93.5 MB (93504340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5b2f297ac7dab1b271b2974c656c579fae635f289010a9cad68a91b598e3e3`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 20.0 MB (19950926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dacc33e1b8c009329c37bff527ee5c5ef214878d1985ea51c7fe308d69347c2b`  
		Last Modified: Thu, 16 Jul 2026 01:33:22 GMT  
		Size: 4.5 MB (4515187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b93b4204d0bb41ff48420a1dea5ac47ac64f42a962bf5654881d6ce39b66dd9`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:960e0f7825a9ec82bd5087ac45164745159b70dbf74e6fc334839510502a6c2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4267757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4482d2806242be5373210e561bc6468a1e28c8f5d8a460a3344002b556a229f`

```dockerfile
```

-	Layers:
	-	`sha256:1dd47d5e51d178b8616c4ecb59ae0874dd9078db5296028674a2c54216465317`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 4.2 MB (4249231 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c7fd13889fab52d9533443d467f18099ca090477e76858107bb4fad5df49224`  
		Last Modified: Thu, 16 Jul 2026 01:33:21 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:eae04d6a9f82e326f3cd6ea0f09fb1afa1a601232aab8bd1c9cba10d48c06408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.1 MB (171091480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:600b9fab687b3ec8b561fa18ce6cb4cd822fba3348642a0ac2a623ef23ce1a56`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 03:08:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 03:08:01 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 03:08:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 03:08:01 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 03:08:01 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 03:08:02 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 03:10:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 03:10:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 03:10:42 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 03:10:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 03:10:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 03:10:47 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 03:10:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:380d3eabd945505d4db48078d6d4aeda6a011b9da5c9767fd7ea92fdb78f37f3`  
		Last Modified: Tue, 14 Jul 2026 00:12:57 GMT  
		Size: 52.3 MB (52341834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a95763fcb07d7f243299fcadfb94f05cc61b7796cb6cb6e13d400e802e5d38`  
		Last Modified: Thu, 16 Jul 2026 03:11:15 GMT  
		Size: 93.9 MB (93902053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da1c0e19a3da0a73f4236259e3d9876e8b7a2020564d93dd15b80abec96abb3`  
		Last Modified: Thu, 16 Jul 2026 03:11:19 GMT  
		Size: 20.3 MB (20331942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b76c20630a6697fc0988000e6e0fb40a6b184db835a6869242d082131611fbc`  
		Last Modified: Thu, 16 Jul 2026 03:11:19 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdbf812811b9e3aaa27004e40a81d1b6bec05bf9606d0e788e84cc6ecbb25991`  
		Last Modified: Thu, 16 Jul 2026 03:11:19 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:f663aa4625867630cf3aaff28890f64e034ac283585f67f84d55887a525cdcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4253841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b475438af31f4eb604db4e2410eda987eee3533902c7a53f9326932b9dab4867`

```dockerfile
```

-	Layers:
	-	`sha256:932b3607366df91a58bf8540b59a4d74c86ba89b5a8898e384909aca9ec99cce`  
		Last Modified: Thu, 16 Jul 2026 03:11:19 GMT  
		Size: 4.2 MB (4235404 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28e83311d2a2e4313203e21458dfd4b7f832f1a66b55e4863a234d0812faade2`  
		Last Modified: Thu, 16 Jul 2026 03:11:19 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; s390x

```console
$ docker pull clojure@sha256:aecd52785742388986500f724c61580a5f5536de18526ac72588fd7492200677
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (161980154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42420ddd04abef9657e122dd251e3010c8eea435e39092e1675ee81050ac645`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Thu, 16 Jul 2026 01:55:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 01:55:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 16 Jul 2026 01:55:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:55:53 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 16 Jul 2026 01:55:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 16 Jul 2026 01:55:53 GMT
WORKDIR /tmp
# Thu, 16 Jul 2026 01:57:03 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 16 Jul 2026 01:57:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 16 Jul 2026 01:57:03 GMT
ENV LEIN_ROOT=1
# Thu, 16 Jul 2026 01:57:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 16 Jul 2026 01:57:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 16 Jul 2026 01:57:05 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 16 Jul 2026 01:57:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:357b5f503198dc02aa36072104c563dea2d3f655b12449c086f5a46b8a249d36`  
		Last Modified: Thu, 16 Jul 2026 01:57:31 GMT  
		Size: 90.5 MB (90536944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdf9864c7177cba4781d2634719e00312931ff29cf8d115a8538b2a3feb8a3d`  
		Last Modified: Thu, 16 Jul 2026 01:57:31 GMT  
		Size: 19.8 MB (19770309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8407abe8bde8bb8b5942b41ff24f109e99a7db3310a4efec3c297db7fe7de5`  
		Last Modified: Thu, 16 Jul 2026 01:57:30 GMT  
		Size: 4.5 MB (4515193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eaa048a9f47aa95fee1d51cb02129152d42a194a567014becda35f4cc6af613`  
		Last Modified: Thu, 16 Jul 2026 01:57:29 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:c82deae62f24b61bb275852dba3cee9516beb36625bb61c5b70edd88b9ec5a84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4244976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:485d989f171dfee50fd440c6815d408eae0f9a89f619900805ce8998be030bc1`

```dockerfile
```

-	Layers:
	-	`sha256:b852933e0169761e0e83b00260666fe5d180628c465161152a0aca23acf76b41`  
		Last Modified: Thu, 16 Jul 2026 01:57:30 GMT  
		Size: 4.2 MB (4226595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9887f2b9dfdd00781df49994c53148b07319feb4c57790a74ad814ab73ba28ae`  
		Last Modified: Thu, 16 Jul 2026 01:57:30 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json
