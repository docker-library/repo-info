## `clojure:lein-bookworm`

```console
$ docker pull clojure@sha256:3c263d4d07a6c71bc8b7ebebf3cd7d699905df91b64e306716e88670c4d46f6e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:lein-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ac5e8f725a0a7bb6e36a8538eef0746498ae1bf1bb4935a2e82a7d7ba4433594
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165784315 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f2e489f54b5ff0f861303ab0feed8b695bb4661703ef2851a09624436df5b28`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:24:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:24:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:24:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:24:09 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:24:09 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:24:09 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:25:17 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:25:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:25:17 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:25:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:25:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:25:18 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:25:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83379b4f6178843153ed9e226ea7922fd09539ec0907c51844dde09692800acd`  
		Last Modified: Fri, 25 Sep 2026 23:25:37 GMT  
		Size: 92.6 MB (92618061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97ea0bc906582ad60625dd34800717e6cc4dc041ba0f43edf4a13febfc96fd3`  
		Last Modified: Fri, 25 Sep 2026 23:25:36 GMT  
		Size: 20.1 MB (20147188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e22f76c67c82c1de4af0ebf7d3da1d29af473d69c8c17d1d5c30bbc1144b3d5`  
		Last Modified: Fri, 25 Sep 2026 23:25:35 GMT  
		Size: 4.5 MB (4515197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a58320d0d53bf216f7a977620dd6f0e776070ad09d9d4b2fc4d4b0a945462ae1`  
		Last Modified: Fri, 25 Sep 2026 23:25:35 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:55fe7fe0ddc5b48d38d5d2e6e9b863a1226ab3197842425f023b318a9db54d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce2a7e0fd5dc9c46f1be106cd9e42715996eddc96792be1d1930b792b5463e9f`

```dockerfile
```

-	Layers:
	-	`sha256:687bfff3e66e4a9adea424825d4950f1ca458e1cc20dbd7b65a04d50ec47bf47`  
		Last Modified: Fri, 25 Sep 2026 23:25:35 GMT  
		Size: 4.3 MB (4258593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eb9e59dfc97c53c3eb0dc30f1c83e3e666ad78092599cb06cdf3f43d74825a1`  
		Last Modified: Fri, 25 Sep 2026 23:25:35 GMT  
		Size: 19.6 KB (19628 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:d98c940c13ad1ca2e9b615190175272de0eb9cf4673100269893eb99688038d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164401674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6233bde197ea46d72878bb5c0f36fa2e34b3f6132b554cd894fc6f431f7b0384`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:21:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:21:53 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:21:53 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:21:53 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:23:04 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:23:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:23:04 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:23:05 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:23:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:23:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:23:05 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cc1ea58dab5f7ef21cf81d6409ee0c54207c951b559b42e768f9347ef572c1`  
		Last Modified: Fri, 25 Sep 2026 23:23:26 GMT  
		Size: 91.5 MB (91528868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93ea11cd35c929f7a90af27fad272c9fadcd50faa4629a017ed9d44c26ad5634`  
		Last Modified: Fri, 25 Sep 2026 23:23:24 GMT  
		Size: 20.0 MB (19967287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebb67caa40ab1b7524c7af53dd39877b7a6ee06addcc195a1a7c613b89a00e1`  
		Last Modified: Fri, 25 Sep 2026 23:23:24 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88827b2bf816c8199e84800520fbac470bfa9be17865eb282fe26ec03c3c13cd`  
		Last Modified: Fri, 25 Sep 2026 23:23:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b1558336e1e07cbed3c880dd84904a997109777836574d46ccd82f4d37919c01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4278099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf839ead7b11b0ec80c4e80b051abca9f1e1eed379b934c938de359038ba69b5`

```dockerfile
```

-	Layers:
	-	`sha256:0ed83f70d6562369655e71214af3b3223e098c05774dab40025f4ae9910cfb33`  
		Last Modified: Fri, 25 Sep 2026 23:23:23 GMT  
		Size: 4.3 MB (4258277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12c2a66e93ba770a008a9ea8ae7b1f0a93afd71a4ce8dc34faa30ce2eb33c9db`  
		Last Modified: Fri, 25 Sep 2026 23:23:23 GMT  
		Size: 19.8 KB (19822 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:lein-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:9fec1f435c85d814b4465d55f3bf0969fbeb8d554bad0a1039a13cd42b2aa2ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.5 MB (168468891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6998d38858576771ff1b9fa0902dafeffce4a11cff6b51e159a185a9c2063162`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 07:33:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 07:33:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 07:33:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 07:33:08 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 07:33:08 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 07:33:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 07:36:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 07:36:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 07:36:09 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 07:36:14 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:14:33 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:14:33 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:14:33 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e144bdb34cfddeba81abf8a8bfde859fad0258615bc5463bba81aa5e20a8bf2b`  
		Last Modified: Sat, 19 Sep 2026 07:37:47 GMT  
		Size: 91.3 MB (91255822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf3f6b6be2e6e19975369e5035bccc6a41d744c29a3630e972e812df25a6eb7`  
		Last Modified: Sat, 19 Sep 2026 07:37:44 GMT  
		Size: 20.3 MB (20348113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1c90a3d0c1b3a94f205326f7156915506c48ae241229146ea0ad65275ccead`  
		Last Modified: Sat, 19 Sep 2026 07:37:43 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5df4ed5c6f94b5d614e9bdbd71b6670f45e02693721be011c0681cb021a9f7b`  
		Last Modified: Sat, 19 Sep 2026 08:14:53 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:7f732159cdd1d7f53ecbf7863e04d51b80e3b866dae291e3c3bd57a73c01a014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4263503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e4011f0d6178a9a66cf1ddb6a6f64e39af025feb8b6ff73032c9a8b0a62cfde`

```dockerfile
```

-	Layers:
	-	`sha256:35cfc9b53ff513bb4680d988cae93c9ab00e50282ce9e5a4d8c169294eb4b8b4`  
		Last Modified: Sat, 19 Sep 2026 08:14:53 GMT  
		Size: 4.2 MB (4243794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d53dcb6138bb398e32bfe2af355cebc06d1a6ca69075bec21e2766d22efce118`  
		Last Modified: Sat, 19 Sep 2026 08:14:53 GMT  
		Size: 19.7 KB (19709 bytes)  
		MIME: application/vnd.in-toto+json
