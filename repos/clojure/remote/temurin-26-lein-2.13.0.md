## `clojure:temurin-26-lein-2.13.0`

```console
$ docker pull clojure@sha256:fe55082a17939de59b45b9c1f852af37b895f05dba4104e326382f76d9884993
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:c08651cd889124ce6c3e20fb711c43bc355fca6c174e34364d483c3b9a9eeeb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.7 MB (167729086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1e39012457cbb1342956c73c9a8f5411d5fdd6d4d81b979379a2d59df37706d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:25:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:25:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:25:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:25:39 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:25:39 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:25:39 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:26:45 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:26:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:26:45 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:26:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:26:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:26:47 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:26:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3c8ffd179a4f1a5b43e77a6b5959913e3a04ab5ca83054a17a7c2fdd1fe1e5b`  
		Last Modified: Fri, 25 Sep 2026 23:27:05 GMT  
		Size: 94.6 MB (94563471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c441412363be7f239ea9edf0b81b8a580400a1738ecbb1ded94389ba50c3a82`  
		Last Modified: Fri, 25 Sep 2026 23:27:03 GMT  
		Size: 20.1 MB (20146538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2294ceb6bfeb26e2a728ab620dabe15e57cc94e92cf3654d338abbc64c1235`  
		Last Modified: Fri, 25 Sep 2026 23:27:03 GMT  
		Size: 4.5 MB (4515208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ca3ed66faff4f2144aac266296ab62a01be73e8a5c7a7034be4104f54ee060b`  
		Last Modified: Fri, 25 Sep 2026 23:27:03 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:3e0076d7e59f988e20c708d2d59f395a428e0de29211742bfad9e52809cf809a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23052fb8933ca0a7dc7c2cdc90d1a34cc02371a4b4821d778e7259451041ac47`

```dockerfile
```

-	Layers:
	-	`sha256:444e8525f39dbfa4004210fb379163ab4798c343b33cf0a9b5a836f1f7f35d8f`  
		Last Modified: Fri, 25 Sep 2026 23:27:03 GMT  
		Size: 4.3 MB (4254842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:568419ad57d0017f80e3450d7cad02d6e594f99e45630ab16ef82decffe7ecbe`  
		Last Modified: Fri, 25 Sep 2026 23:27:02 GMT  
		Size: 18.4 KB (18381 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:7f7f10c074e2b618d0e5ec7ec7d4bc8a75585098006dfd167dc875a83258d12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.4 MB (166416366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f0a4433373607809063d13d3ff0147af771f63c8ec38cf0cfd27848b568fa86`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:23:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:29 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 25 Sep 2026 23:23:29 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 25 Sep 2026 23:23:30 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 25 Sep 2026 23:24:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 25 Sep 2026 23:24:39 GMT
ENV LEIN_ROOT=1
# Fri, 25 Sep 2026 23:24:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 25 Sep 2026 23:24:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84126487a81f73032d10d179ce397f3345590baed9cd03354c43a92eaad9a2d1`  
		Last Modified: Fri, 25 Sep 2026 23:25:01 GMT  
		Size: 93.5 MB (93543595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a00baaca6132f4bb62781711e36c1eb4a714ddc7830a7a2cd838d1226f173f1f`  
		Last Modified: Fri, 25 Sep 2026 23:25:00 GMT  
		Size: 20.0 MB (19967235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1c371b01394dd4a4666216edc1cf8e9e18a5905248ac22a6511924f2045537`  
		Last Modified: Fri, 25 Sep 2026 23:24:59 GMT  
		Size: 4.5 MB (4515196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e720e1ea723e32a581356a50f5e54045cffbae4bc2cee7cf508ea463ad7b9384`  
		Last Modified: Fri, 25 Sep 2026 23:24:59 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:7a7e650b7d1fb4d74d51dd5ee0a85d2ad535f02a14e92a14471e23ea6ef068ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4273004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4416826777fb8d13018bdffaf64a69dd3da5e5aa1e96a0a4146c1cdfa24f0e90`

```dockerfile
```

-	Layers:
	-	`sha256:b7c7e62a7e96c8acb231b8ac8bf17530ec9e4a4bb8e840e5b2d7106824601630`  
		Last Modified: Fri, 25 Sep 2026 23:24:59 GMT  
		Size: 4.3 MB (4254478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31f6eef02384eac2fbbf9cb00ab191675cc385ebaf6c316893ca9a426173232a`  
		Last Modified: Fri, 25 Sep 2026 23:24:58 GMT  
		Size: 18.5 KB (18526 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:7dc23a8a2c58ef7779c7625a69d97193f3bbbde44ec07b9183f6e070a4616d87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.6 MB (170563935 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90ee62f2c75cf0e660cd5f40e60e816fa0556cc9c3fd16454dea3f98e618cee9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 19 Sep 2026 08:25:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 19 Sep 2026 08:25:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 19 Sep 2026 08:25:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 19 Sep 2026 08:25:10 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 19 Sep 2026 08:25:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 19 Sep 2026 08:25:11 GMT
WORKDIR /tmp
# Sat, 19 Sep 2026 08:28:43 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 19 Sep 2026 08:28:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 19 Sep 2026 08:28:43 GMT
ENV LEIN_ROOT=1
# Sat, 19 Sep 2026 08:28:47 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 19 Sep 2026 08:28:47 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 19 Sep 2026 08:28:47 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 19 Sep 2026 08:28:47 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0ea178bd9b8f54952386421fc62686a8d2b05eb41552facf4c9c28231ae087`  
		Last Modified: Sat, 19 Sep 2026 08:29:22 GMT  
		Size: 93.4 MB (93350791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f58700e5edef21f5656f38978c9099c0e77c6ec8f5013c25b3fad61a23708af`  
		Last Modified: Sat, 19 Sep 2026 08:29:20 GMT  
		Size: 20.3 MB (20348219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b7824edf82824a577353ab9f382b5d24e801879e2b23dee1e9ab37e8e55639`  
		Last Modified: Sat, 19 Sep 2026 08:29:20 GMT  
		Size: 4.5 MB (4515191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a92502fc83c88fdedf0b2e5466190a5904e7e93c0dd4804d286949108d6467b`  
		Last Modified: Sat, 19 Sep 2026 08:29:19 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:a1f1e6e3daa67a95188759f856caed495f7df3d92330da59a461a710fedbb92a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4259082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42767bdca6ef4be5164612212e26baaac948054a189cf07f4bafb6cde8dfd17`

```dockerfile
```

-	Layers:
	-	`sha256:99b8996424da8dbb525a9030456a7518569d10a3d8a7ef38df6f3fd7f42ee6f2`  
		Last Modified: Sat, 19 Sep 2026 08:29:20 GMT  
		Size: 4.2 MB (4240645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:581ba4dad679ee9fd05dda1cd26722076b862065a6290ed16e9fe671038e54bd`  
		Last Modified: Sat, 19 Sep 2026 08:29:19 GMT  
		Size: 18.4 KB (18437 bytes)  
		MIME: application/vnd.in-toto+json
