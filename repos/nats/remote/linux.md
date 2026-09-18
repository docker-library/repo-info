## `nats:linux`

```console
$ docker pull nats@sha256:216464d1d8dd553b0546f678675326d6461fcf5a277b5d3636c86ea89d5ff9da
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `nats:linux` - linux; amd64

```console
$ docker pull nats@sha256:fdae708d900cb150ce13f203359719bdd9cefd3dbbbc32a4c6224b23ea3e0b2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7271856 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42b765f589c73e6c915cfa6ab39199eafe8198627cb996e22e216991e8006a`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:19:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:19:06 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:19:06 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:19:06 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:19:06 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:ea378396b0e495c1970376f95eb91ccdfc8ae09ef50b8a032095c896c7ad7a05`  
		Last Modified: Thu, 17 Sep 2026 13:36:42 GMT  
		Size: 7.3 MB (7271348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72159414f397dc199b0844a9b02f0fb62a21203a02430e169dd23d266513aa9`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:17e256f317d5fcf919e7ead46ea2c2bdf5ad63a3dbe61bd91616f8ed932053c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9602b73ba3abf744356617656d3dd757c0b5a132d229697adde20bfb4e6a088`

```dockerfile
```

-	Layers:
	-	`sha256:5cbec4455301e0c05e2215d01ecf909d7b79878528379910ea3c660e6c00551a`  
		Last Modified: Thu, 17 Sep 2026 22:19:10 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v6

```console
$ docker pull nats@sha256:98f4413ff2ec755e11cefd725378252e3fe0b410f59b3fae6a52e13d7c6ada2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7030217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45054bfe6dffed2270742e3891b3419544cb029e95131e1f22d47e3af6964b0`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:26 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:27 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:27 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:27 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:f2feeea78edcdd24c63db269605f36e7f5235a6e086d09337c7d20ba880be87e`  
		Last Modified: Thu, 17 Sep 2026 13:36:44 GMT  
		Size: 7.0 MB (7029707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ab8c4f5e18fc77626d24515585ffd81be10addb2b1d4ccf60951dee665e9f51`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:8d7ba8d07508e7937d50c09964e9af2d07ef1a192be9fa1be009a71fb4295459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edb96c31f9af76a142305c7b9a0f3d28d37898b7bc44e11f3e89b5ce1e8c108`

```dockerfile
```

-	Layers:
	-	`sha256:aeeee624d226afefdecbfc4c0b371205bc3858a32b364069b84cf3c064f72a6a`  
		Last Modified: Thu, 17 Sep 2026 22:31:30 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm variant v7

```console
$ docker pull nats@sha256:0b2c0a5da17e45c2926759e26d2f91b3a90445688420ed8b121f5670bb25fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7018028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aa8b0bad86c38f10d4f0fc09ae1b3ae7e1fa492745d2016c5645c5a7cf82a53`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:31:35 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:31:35 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:31:35 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:31:35 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:cab80cd6aef969b0cd6e24d17d079e6c6020896c595efffe81ffdd08928b9c77`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 7.0 MB (7017520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2173ad5e6e6104121f598cafffea6572d8c9969ea6f3892e2e392346853161eb`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 508.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:99b6ef89213afd87a0ca515d8cdcf66dc9136b06ee3cd04b4c651632961fa3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99856c801993062640bf5007e3879d5e5fa73eced2fcc32634231fe42f3f8b63`

```dockerfile
```

-	Layers:
	-	`sha256:d52740a68dad592b37b2595fe8506fd1d47529397f001b5d3864956bc3714490`  
		Last Modified: Thu, 17 Sep 2026 22:31:39 GMT  
		Size: 10.6 KB (10554 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:c5385888c04605faecc3379bdaa0cf9862cab97e40d328e0f1d9a505e5c12634
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6586831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b7d9ba567daff4bcb11c7a638b4a3ce1249400f486d8243af8749a117758a96`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 22:39:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 22:39:11 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 22:39:11 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 22:39:11 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 22:39:11 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5f24b2bca96a1880aafb89575a32734104a69d90c11339aeb0528a0f2b81d95b`  
		Last Modified: Thu, 17 Sep 2026 13:36:43 GMT  
		Size: 6.6 MB (6586322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:670e44c0ad2bc5078d7bc150a93654b66ffdffced547510462542ac4011fa935`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:2a4fe977bc98519aa5d22e9edeab6227403f5e09892a86c2a9b4bb0c924e3d9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.6 KB (10608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36011e34587144e3a3b0671b06c8f013be55f1b301ff867f748169c6956ecf14`

```dockerfile
```

-	Layers:
	-	`sha256:f6f4c43f969ad443eb9847dd89358876ec87beb53e1c4930195d067aca4f6e8c`  
		Last Modified: Thu, 17 Sep 2026 22:39:15 GMT  
		Size: 10.6 KB (10608 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; ppc64le

```console
$ docker pull nats@sha256:3ed51b19c295698d73f00fca99a0de94dfef7217eb8dcb31eed81c9940720835
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6653288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cff70453f83210cd65a7c2f074ce48cb29690c2d748fe64a4e22a4238d13543f`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 17 Sep 2026 18:46:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 17 Sep 2026 18:46:58 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 17 Sep 2026 18:46:59 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 17 Sep 2026 18:46:59 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 17 Sep 2026 18:46:59 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 17 Sep 2026 18:46:59 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:57af56e2d16214211f7433f7729a7d8d4514842f6b72a94c680f736e0d51f646`  
		Last Modified: Thu, 17 Sep 2026 13:36:41 GMT  
		Size: 6.7 MB (6652779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8075acfaaf058268dd4fa510e7676bb97a5b0fd1f23bc45f1b8a10e0efe83758`  
		Last Modified: Thu, 17 Sep 2026 18:47:08 GMT  
		Size: 509.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:a090557c7425c816be933d023eb14d4d4eb8d43ab4918a1b90d5b72b3891c199
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.5 KB (10513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5854efb3e3b891fdaedc8459cb103b99557934a21ca4b04ebb4e5a18ef2bed18`

```dockerfile
```

-	Layers:
	-	`sha256:e386e7ae6634184b58c47842b8469b0b1c917f28e3e9a15e506f57d9ec0c2414`  
		Last Modified: Thu, 17 Sep 2026 18:47:08 GMT  
		Size: 10.5 KB (10513 bytes)  
		MIME: application/vnd.in-toto+json

### `nats:linux` - linux; s390x

```console
$ docker pull nats@sha256:2b12f2f894e18a7850e4d7e35c2d978ff63fbca6da5f2bba03afb3dce93d833a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6722078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d28e13f153449be369c01c027ac73f25e3711dfda881be2dc2cb5a65a1ce6580`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Thu, 27 Aug 2026 19:09:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Thu, 27 Aug 2026 19:09:29 GMT
COPY /usr/local/bin/nats-server /nats-server # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
COPY nats-server.conf /nats-server.conf # buildkit
# Thu, 27 Aug 2026 19:09:31 GMT
EXPOSE map[4222/tcp:{} 6222/tcp:{} 8222/tcp:{}]
# Thu, 27 Aug 2026 19:09:31 GMT
ENTRYPOINT ["/nats-server"]
# Thu, 27 Aug 2026 19:09:31 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:645c3001e3071feaa4f0555b8ec7cbc72d382b6e2d1549632bae9ba35544d9a3`  
		Last Modified: Thu, 27 Aug 2026 15:51:20 GMT  
		Size: 6.7 MB (6721568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ca6e60cc9540f436c87c4123a55d42860b195d1349753178ceedec9e087650`  
		Last Modified: Thu, 27 Aug 2026 19:10:06 GMT  
		Size: 510.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `nats:linux` - unknown; unknown

```console
$ docker pull nats@sha256:89feed4668dc7cc06e330f2a9588a56b91e0c400fc9abfa4d2803c171b031f69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.4 KB (10423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9dda5eb5db769bd0f3b56c9f72b449a2490a05a01d909ff6295248e533f3c68`

```dockerfile
```

-	Layers:
	-	`sha256:a1ee8f1785ba423cfc8aedcc94d3c45fd4b09da798946bc8dcf42b50beda9908`  
		Last Modified: Thu, 27 Aug 2026 19:10:08 GMT  
		Size: 10.4 KB (10423 bytes)  
		MIME: application/vnd.in-toto+json
