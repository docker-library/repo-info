## `clojure:temurin-25-lein-bookworm-slim`

```console
$ docker pull clojure@sha256:c88e307a545cb6eff544396b24649ccae218177bf0afde64fef148f77d2408ae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-lein-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d4e04d4b1e32bdaa0e99d1db48c843b74f161d438fdfc4344bd8fb3bbf99b8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.4 MB (143434276 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3c3e37a751016d5032892d4a551f1aedd1337d674a60ed0c34b2b22e60f8a9a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:05:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:05:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:05:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:05:20 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:05:20 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:05:20 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:06:32 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:06:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:06:32 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:06:34 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:06:34 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:06:34 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:06:34 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcd9573c8d57c241f36b73ae66eaca9cab89bbc58304f540a0e992844462fbca`  
		Last Modified: Thu, 29 Oct 2026 20:06:53 GMT  
		Size: 92.6 MB (92598904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0243415b799ba545d33424a6ad4f6fd66e3baf6730e0403b1daf6b08e341386c`  
		Last Modified: Thu, 29 Oct 2026 20:06:51 GMT  
		Size: 18.1 MB (18072310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96f9990bc66128c87d7a69b84d2061a861329f332597dd2518d030cc6d280437`  
		Last Modified: Thu, 29 Oct 2026 20:06:51 GMT  
		Size: 4.5 MB (4515194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d39715440dc115450793995b66db05b64180285bcf11a2dce59f6df5376471`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:981de4b1a921df1594e31f7124596be6a821149ce09611abca9c1335e8421d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722801 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f734f59eb528088ed9551ace675b51dd3cb347ce237681d6aff2277bbf27dfda`

```dockerfile
```

-	Layers:
	-	`sha256:a4de4120e3e49581f0c35dfe164ef382edcad8cff7f8d65ca250204c1a8878ac`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 2.7 MB (2704373 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de149c1d136043263af2078bc84faee28c4ec763cfe1b012ec916a4698337e63`  
		Last Modified: Thu, 29 Oct 2026 20:06:50 GMT  
		Size: 18.4 KB (18428 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:683670d3feed62766c1a4d095008a61877f3a3787c99a3be61cf5ea83de570f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.1 MB (142096261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68308e5c9a87104e5adea5a28fa24934d7a58f7c15be2368a2e95bdf589cd5e7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:06:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:06:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:06:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:06:05 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:06:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:06:05 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:07:16 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:07:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:07:16 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:07:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:07:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:07:18 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:07:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe7f1330dd6d8b3d0d37c7ed1b9b7bc48d951f40fde7a777eb0c9d43931060d`  
		Last Modified: Thu, 29 Oct 2026 20:07:38 GMT  
		Size: 91.5 MB (91525597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547b0980f22fa585351936615b0c10f9b5ddfbb6d1ed718bc15c51b153b3d825`  
		Last Modified: Thu, 29 Oct 2026 20:07:36 GMT  
		Size: 17.9 MB (17917063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd48654706566e45ef955d98f35793352c6a03f96737660c309a71698e2a814`  
		Last Modified: Thu, 29 Oct 2026 20:07:35 GMT  
		Size: 4.5 MB (4515220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf6fbb5c2be3e144d38c449ec03901af3a0d264917c488409548b3f3e3b0d81`  
		Last Modified: Thu, 29 Oct 2026 20:07:35 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4383f00d025aed7cca37c9f41e98ab4c249b431340e4df1a47feb8a441033e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2722580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a3cd07db564a1c638c90dcb31e4b23e304530726711dd07a048f9ba40e87818`

```dockerfile
```

-	Layers:
	-	`sha256:e9ecc6c73409e38f88c2ab33881e42f0ef2a311eae4be7662f50aed18e7edc51`  
		Last Modified: Thu, 29 Oct 2026 20:07:35 GMT  
		Size: 2.7 MB (2704009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47a25b73626012281a70ca1057f824add5f2b03b0aa4d3dcf13c7f49d98877c`  
		Last Modified: Thu, 29 Oct 2026 20:07:35 GMT  
		Size: 18.6 KB (18571 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-lein-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:7c42f5a16e6c3155cf42e77ece4dfed7a72a260d77060100806a859329614054
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144999887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4815c089a4ddb1598a4bf78188aad731d447e5a2909c20458bcaff8633e5ca9f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793059200'
# Thu, 29 Oct 2026 20:30:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 20:30:17 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 29 Oct 2026 20:30:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 20:30:17 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 29 Oct 2026 20:30:17 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 29 Oct 2026 20:30:17 GMT
WORKDIR /tmp
# Thu, 29 Oct 2026 20:33:19 GMT
RUN set -eux; apt-get update && apt-get install -y maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 29 Oct 2026 20:33:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 29 Oct 2026 20:33:19 GMT
ENV LEIN_ROOT=1
# Thu, 29 Oct 2026 20:33:23 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Thu, 29 Oct 2026 20:33:23 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 29 Oct 2026 20:33:23 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 29 Oct 2026 20:33:23 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:c54717939ea7c9af7b520ec3b31812a7c6059b4b22dba27ecf4125f5d2f7742a`  
		Last Modified: Wed, 28 Oct 2026 00:20:20 GMT  
		Size: 32.1 MB (32092841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816730e2f2627d6148f2ddc09af6b2fdad798b7f985083887438ac81623fafdd`  
		Last Modified: Thu, 29 Oct 2026 20:34:00 GMT  
		Size: 90.1 MB (90111681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cc8191b913c3c9c20a8ad7af8df5fe78a5db49607eb4d0922cff972a531a51e`  
		Last Modified: Thu, 29 Oct 2026 20:33:58 GMT  
		Size: 18.3 MB (18279725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09222935faa13b6851404eb376591400ee8dd19232252fae97f36553444c901`  
		Last Modified: Thu, 29 Oct 2026 20:33:57 GMT  
		Size: 4.5 MB (4515209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d210592fae9449dcd1029d36299f698f218352fca301ff254bc307275405cb3f`  
		Last Modified: Thu, 29 Oct 2026 20:33:57 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-lein-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:90a925324b06522a11409f8625c5b6c975824bfe08e2a61122c5ab90f0a266fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.7 MB (2706152 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02759a4e65021433eb835a8d4f4b7d5d9f71fb3ad6f226461a7ed6dbfc08512e`

```dockerfile
```

-	Layers:
	-	`sha256:2d7b1db2f9773d7090bc420bab7b4e8c22d376086aa0ba217b833fd4343fa0e0`  
		Last Modified: Thu, 29 Oct 2026 20:33:57 GMT  
		Size: 2.7 MB (2687669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:96f43a2ec9ec1f8e4cd4defd89cef8f930cb3814483a500f864e28b5858fd29d`  
		Last Modified: Thu, 29 Oct 2026 20:33:57 GMT  
		Size: 18.5 KB (18483 bytes)  
		MIME: application/vnd.in-toto+json
