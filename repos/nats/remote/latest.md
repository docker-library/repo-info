## `nats:latest`

```console
$ docker pull nats@sha256:af52d6d919884cd7db79b4a1d303d49a1c528e648b093c5e775cbce25320298c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 5
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	windows version 10.0.17763.3887; amd64

### `nats:latest` - linux; amd64

```console
$ docker pull nats@sha256:afeb1c1aab2036e50aa6224c94c689511caeeb550eed9ab9bb5858f4911f5503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4926331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cc3017edab7b67e29f47c92b56cc34f0f8ebefa6fb8dc0d88c687289b768831`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:664b8b57454f3da8850d2d6ef93a053325e8bfd6ac97b3e7eb698f7ab97a8444 in /nats-server 
# Fri, 06 Jan 2023 19:20:20 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:20:20 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:20:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:20:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:20:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:5508a75fcd75bf81905bd9dface9fc8d21aadf369f833d008d69b84105e348eb`  
		Last Modified: Fri, 06 Jan 2023 19:21:07 GMT  
		Size: 4.9 MB (4925823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7eeb51c6bafbe9123bb07d5a7cce0ca930c05095f5a7e84bd8b18ce00ca863e`  
		Last Modified: Fri, 06 Jan 2023 19:21:06 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v6

```console
$ docker pull nats@sha256:f99b07d5eeb8971c80cec3162acdac2900afbbfbef5dc64db1611b3e4fb13e10
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4690616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f5e7a92ad51faff09589ae0df91b06d2a55a2b4256f5f90eba2977ecf853a16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:06595cdf8db2d70bfb15c918efe6dd450e02ede2db1bb850d93a2a60bbf27df7 in /nats-server 
# Fri, 06 Jan 2023 19:01:45 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:01:45 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:01:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:01:45 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:01:45 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:873d4014d51427c81aca5b4db8b1b8a46b3d0815b34cdd333e34677aab4a7ba0`  
		Last Modified: Fri, 06 Jan 2023 19:03:15 GMT  
		Size: 4.7 MB (4690108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a283a79d5f31a899e117ab07ef87b81b7318fc27d705d7113398a1bfb28bb2a`  
		Last Modified: Fri, 06 Jan 2023 19:03:14 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm variant v7

```console
$ docker pull nats@sha256:455074c66f1b96f45dbea5e8442f68edfb94af657dee605576061781047e582a
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.7 MB (4685531 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f6a8534b65a22d58be02e8984744983e3c96c1f5e4c060dc057d23d8fec24bd`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:5d6035836a154f215ce8e2c0418c0336bca5ac209aa8e275ca48920cc9b3f584 in /nats-server 
# Fri, 06 Jan 2023 19:15:40 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 19:15:41 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 19:15:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 19:15:41 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 19:15:41 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:a2d610a1a25d4664f94b304a8a8f12e1d4f104226c5002b279d0499c3505a29c`  
		Last Modified: Fri, 06 Jan 2023 19:17:18 GMT  
		Size: 4.7 MB (4685021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0bbede3d18d47ba4e57885915c844dc259ebac29270369d6472059f4ab0e666`  
		Last Modified: Fri, 06 Jan 2023 19:17:17 GMT  
		Size: 510.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - linux; arm64 variant v8

```console
$ docker pull nats@sha256:ffce0cb26fd6677a5ef05b45318360ae20e737bfdc2863d71bae13ec9bc5047b
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.5 MB (4512312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f3692328c1caf31688888abde4f682928158ee544d2e3644095c9a2ecf9d16`
-	Entrypoint: `["\/nats-server"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:19a72664362353bea19dae5d33666206cbba5c7e481270b1ebf62b792b7a49ea in /nats-server 
# Fri, 06 Jan 2023 21:38:21 GMT
COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in /nats-server.conf 
# Fri, 06 Jan 2023 21:38:21 GMT
EXPOSE 4222 6222 8222
# Fri, 06 Jan 2023 21:38:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/
# Fri, 06 Jan 2023 21:38:21 GMT
ENTRYPOINT ["/nats-server"]
# Fri, 06 Jan 2023 21:38:21 GMT
CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:4b1c65fa290503905ae36006eb2cd6d2df7267f54d65588f85ba20e700586ed6`  
		Last Modified: Fri, 06 Jan 2023 21:39:09 GMT  
		Size: 4.5 MB (4511804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256f83ce0dee80eadbf8b49697841b61fb25ace6c9a7682e596eb060a928836a`  
		Last Modified: Fri, 06 Jan 2023 21:39:08 GMT  
		Size: 508.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nats:latest` - windows version 10.0.17763.3887; amd64

```console
$ docker pull nats@sha256:e845c21683844f250e9aa1c9a602145a2a9572a2f16a26fe0bc5655a55d4af0a
```

-	Docker Version: 20.10.21
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.7 MB (111652455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dc3e68def26f7bc94494959dd4188d824f4adc0f2798da534fa3ddcb04b31f2`
-	Entrypoint: `["C:\\nats-server.exe"]`
-	Default Command: `["--config","nats-server.conf"]`

```dockerfile
# Sat, 07 Jan 2023 05:17:01 GMT
RUN Apply image 10.0.17763.3887
# Thu, 12 Jan 2023 05:01:51 GMT
RUN cmd /S /C #(nop)  ENV NATS_DOCKERIZED=1
# Thu, 12 Jan 2023 05:01:53 GMT
RUN cmd /S /C #(nop) COPY file:a4a62c8491380467a4b102dd5a7b3261bb9b459208df8439f078271edc3f0844 in C:\nats-server.exe 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop) COPY file:2c51166f33066351f3cfe3734f884c41f36fb66575bdde453c5c93e819cfae35 in C:\nats-server.conf 
# Thu, 12 Jan 2023 05:01:54 GMT
RUN cmd /S /C #(nop)  EXPOSE 4222 6222 8222
# Thu, 12 Jan 2023 05:01:55 GMT
RUN cmd /S /C #(nop)  ENTRYPOINT ["C:\\nats-server.exe"]
# Thu, 12 Jan 2023 05:01:56 GMT
RUN cmd /S /C #(nop)  CMD ["--config" "nats-server.conf"]
```

-	Layers:
	-	`sha256:e58f9ad3b15a2a4882ab0a845e8e619cc8c3c411ddbe8b50046c1618a95c1397`  
		Last Modified: Thu, 12 Jan 2023 02:40:44 GMT  
		Size: 106.7 MB (106666138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fe88f4c5f9972ffecb9a66b92e75ddfe48bf7d8d451ace7af3527653f67ff9e`  
		Last Modified: Thu, 12 Jan 2023 05:02:42 GMT  
		Size: 1.1 KB (1133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b3a5e5d556eccf6cfe05556fef18ac84d465f8a82399a65f0055b0b02e524d`  
		Last Modified: Thu, 12 Jan 2023 05:02:41 GMT  
		Size: 5.0 MB (4979907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41e5b271add881f0846ea8ed8485d3a494756ab7968ab10d87b6755ea98398ea`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240f225c3465088ab25475196dda660c9153324a2e5b3102bab279193b89c187`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38285c2672cee4b1652f8079041ee7d960577486bec6faccc7b37e00b1bd47d2`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.2 KB (1171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c11c4acc914f0d02d9e79700023861efef7c59a441fb283993f986ccd119d42`  
		Last Modified: Thu, 12 Jan 2023 05:02:40 GMT  
		Size: 1.1 KB (1137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
